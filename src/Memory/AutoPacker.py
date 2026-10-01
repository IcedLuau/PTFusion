import json
import uuid
from pathlib import Path

# Paths
CWD = Path.cwd()
TARGET_DIR = CWD / "scripts" / "modules" / "fusion" / "src" # replace with your paths gng
OUTPUT_FILE = CWD / "Fusion.model" # do it


def get_or_create_meta_id(luau_file: Path) -> str:
    """Finds [filename].luau.meta or generates it if missing."""
    meta_path = luau_file.with_name(f"{luau_file.name}.meta")

    if meta_path.exists():
        try:
            data = json.loads(meta_path.read_text(encoding="utf-8"))
            if "id" in data and data["id"]:
                return data["id"]
        except Exception as e:
            print(
                f"Warning: Failed to read existing {meta_path.name}, recreating... ({e})"
            )

    # Generate missing meta file
    new_id = str(uuid.uuid4())
    meta_data = {"id": new_id}

    meta_path.write_text(json.dumps(meta_data, indent=4), encoding="utf-8")
    print(f"Generated missing meta file: {meta_path.name}")

    return new_id


def parse_directory(dir_path: Path) -> tuple[list[dict], dict | None]:
    """Recursively parses a directory for Luau files and subdirectories."""
    children = []
    init_object = None

    # Collect all .luau files
    luau_files = [
        f
        for f in dir_path.iterdir()
        if f.is_file() and f.suffix.lower() == ".luau"
    ]

    # Collect subdirectories
    subdirs = [d for d in dir_path.iterdir() if d.is_dir()]

    # 1. Process .luau files
    for file in luau_files:
        linked_script = get_or_create_meta_id(file)

        if file.name.lower() == "init.luau":
            # init.luau turns this entire directory's primary object into a ModuleScript
            init_object = {
                "Name": dir_path.name,
                "ClassName": "ModuleScript",
                "ID": str(uuid.uuid4()),
                "Properties": {
                    "IsEnabled": True,
                    "LinkedScript": linked_script,
                    "Compatibility": False,
                    "Tags": [],
                },
                "Children": [],
                "LinkedModel": None,
                "IsLinkedChild": True,
            }
        else:
            # Standard ModuleScript
            script_obj = {
                "Name": file.stem,
                "ClassName": "ModuleScript",
                "ID": str(uuid.uuid4()),
                "Properties": {
                    "IsEnabled": True,
                    "LinkedScript": linked_script,
                    "Compatibility": False,
                    "Tags": [],
                },
                "Children": [],
                "LinkedModel": None,
                "IsLinkedChild": True,
            }
            children.append(script_obj)

    # 2. Process subdirectories
    for subdir in subdirs:
        sub_children, sub_init = parse_directory(subdir)

        if sub_init:
            # Subdirectory had an init.luau (ModuleScript)
            sub_init["Children"].extend(sub_children)
            if init_object:
                init_object["Children"].append(sub_init)
            else:
                children.append(sub_init)
        else:
            # Plain directory (Folder)
            folder_obj = {
                "Name": subdir.name,
                "ClassName": "Folder",
                "ID": str(uuid.uuid4()),
                "Properties": {
                    "IsEnabled": True,
                    "LinkedScript": "",
                    "Compatibility": False,
                    "Tags": [],
                },
                "Children": sub_children,
                "LinkedModel": None,
                "IsLinkedChild": True,
            }

            if init_object:
                init_object["Children"].append(folder_obj)
            else:
                children.append(folder_obj)

    return children, init_object


def generate_model():
    if not TARGET_DIR.exists():
        print(f"Error: Target directory '{TARGET_DIR}' does not exist.")
        return

    children, init_object = parse_directory(TARGET_DIR)

    root_objects = []
    if init_object:
        init_object["Children"].extend(children)
        root_objects.append(init_object)
    else:
        root_objects.extend(children)

    model = {
        "Version": "2.0.22",
        "FileType": 1,
        "Objects": root_objects,
        "NonInstanceObjects": [],
    }

    OUTPUT_FILE.write_text(json.dumps(model, indent=4), encoding="utf-8")
    print(f"\nSuccessfully generated model file at: {OUTPUT_FILE}")


if __name__ == "__main__":
    generate_model()
