declare json: {
    parse: ((string?) -> any),
    serialize: ((any?) -> string),
    null: (() -> string),
    isNull: ((string?) -> boolean),
}

declare guid: {
    new: (() -> string),
    empty: (() -> string),
}

declare _POLY_VERSION: string

declare _POLY_2: boolean

declare _LOCALTEST: boolean

declare function wait(seconds: number?)
    
declare function spawn(callback: () -> ())

declare function tick(): number

declare function time(): number

declare function require(moduleScript: (ModuleScript)): any

declare function pcall(f: (...any) -> (boolean, any))

declare world: World

declare script: Script

declare Environment: Environment

declare Lighting: Lighting

declare Players: Players

declare ScriptService: ScriptService

declare Hidden: Hidden

declare ServerHidden: ServerHidden

declare PlayerDefaults: PlayerDefaults

declare PlayerGUI: PlayerGUI

declare Chat: ChatService

declare Filter: FilterService

declare Camera: Camera

declare Assets: AssetsService

declare Input: InputService

declare Achievements: AchievementsService

declare Tween: TweenService

declare CoreUI: CoreUIService

declare Stats: Stats

declare Teams: Teams

declare Datastore: DatastoreService

declare Http: HttpService

declare Insert: InsertService

declare Purchases: PurchasesService

declare Capture: CaptureService

declare Presence: PresenceService

declare Creator: CreatorService

declare CreatorContext: CreatorContextService

declare IO: IOService

declare Addons: CreatorAddons

declare Selections: CreatorSelections

declare History: CreatorHistory

declare CreatorGUI: CreatorGUI

declare Preferences: PreferencesService
declare class PTSignalConnection
	function Disconnect(self): ()
end

export type PTSignal<T... = ...any> = {
	Connect: (self: PTSignal<T...>, callback: (T...) -> ()) -> PTSignalConnection,
	Disconnect: (self: PTSignal<T...>, callback: (T...) -> ()) -> nil,
	Once: (self: PTSignal<T...>, callback: (T...) -> ()) -> PTSignalConnection,
	Wait: (self: PTSignal<T...>) -> T...,
}

declare class Enum end
declare class AmbientSource end
declare class AmbientSourceEnum extends Enum
	Skybox:AmbientSource
	Color:AmbientSource
end
declare class CameraMode end
declare class CameraModeEnum extends Enum
	Follow:CameraMode
	Free:CameraMode
	Scripted:CameraMode
end
declare class MeshCollisionType end
declare class CollisionTypeEnum extends Enum
	Bounds:MeshCollisionType
	Convex:MeshCollisionType
	Exact:MeshCollisionType
end
declare class HorizontalAlignment end
declare class TextHorizontalAlignmentEnum extends Enum
	Left:HorizontalAlignment
	Center:HorizontalAlignment
	Right:HorizontalAlignment
end
declare class VerticalAlignment end
declare class TextVerticalAlignmentEnum extends Enum
	Top:VerticalAlignment
	Middle:VerticalAlignment
	Bottom:VerticalAlignment
end
declare class TextTrimming end
declare class TextTrimmingEnum extends Enum
	None:TextTrimming
	Character:TextTrimming
	Word:TextTrimming
	CharacterEllipsis:TextTrimming
	WordEllipsis:TextTrimming
end
declare class ImageType end
declare class ImageTypeEnum extends Enum
	Asset:ImageType
	AssetThumbnail:ImageType
	WorldThumbnail:ImageType
	UserAvatar:ImageType
	UserAvatarHeadshot:ImageType
	GuildIcon:ImageType
	GuildBanner:ImageType
	PlaceIcon:ImageType
end
declare class PartMaterial end
declare class PartMaterialEnum extends Enum
	SmoothPlastic:PartMaterial
	Brick:PartMaterial
	Concrete:PartMaterial
	Dirt:PartMaterial
	Fabric:PartMaterial
	Grass:PartMaterial
	Ice:PartMaterial
	Marble:PartMaterial
	Metal:PartMaterial
	MetalGrid:PartMaterial
	MetalPlate:PartMaterial
	Neon:PartMaterial
	Planks:PartMaterial
	Plastic:PartMaterial
	Plywood:PartMaterial
	RustyIron:PartMaterial
	Sand:PartMaterial
	Sandstone:PartMaterial
	Snow:PartMaterial
	Stone:PartMaterial
	Wood:PartMaterial
end
declare class PartShape end
declare class ShapeEnum extends Enum
	Brick:PartShape
	Sphere:PartShape
	Cylinder:PartShape
	Cone:PartShape
	Wedge:PartShape
	Corner:PartShape
	Bevel:PartShape
	Concave:PartShape
	Truss:PartShape
	Frame:PartShape
end
declare class SkyboxPreset end
declare class SkyboxEnum extends Enum
	Day1:SkyboxPreset
	Day2:SkyboxPreset
	Day3:SkyboxPreset
	Day4:SkyboxPreset
	Day5:SkyboxPreset
	Day6:SkyboxPreset
	Day7:SkyboxPreset
	Morning1:SkyboxPreset
	Morning2:SkyboxPreset
	Morning3:SkyboxPreset
	Morning4:SkyboxPreset
	Night1:SkyboxPreset
	Night2:SkyboxPreset
	Night3:SkyboxPreset
	Night4:SkyboxPreset
	Night5:SkyboxPreset
	Sunset1:SkyboxPreset
	Sunset2:SkyboxPreset
	Sunset3:SkyboxPreset
	Sunset4:SkyboxPreset
	Sunset5:SkyboxPreset
end
declare class FontPreset end
declare class BuiltInTextFontPresetEnum extends Enum
	SourceSans:FontPreset
	PressStart2P:FontPreset
	Montserrat:FontPreset
	RobotoMono:FontPreset
	Rubik:FontPreset
	Poppins:FontPreset
	Domine:FontPreset
	Fredoka:FontPreset
	ComicNeue:FontPreset
	Orbitron:FontPreset
	Papyrus:FontPreset
	ComicSansMS:FontPreset
	JetBrainsMono:FontPreset
end
declare class ForceMode end
declare class ForceModeEnum extends Enum
	Force:ForceMode
	Acceleration:ForceMode
	Impulse:ForceMode
	VelocityChange:ForceMode
end
declare class HttpRequestMethod end
declare class HttpRequestMethodEnum extends Enum
	Get:HttpRequestMethod
	Post:HttpRequestMethod
	Put:HttpRequestMethod
	Delete:HttpRequestMethod
	Patch:HttpRequestMethod
end
declare class KeyCode end
declare class KeyCodeEnum extends Enum
	None:KeyCode
	Space:KeyCode
	Exclam:KeyCode
	QuotedBl:KeyCode
	Numbersign:KeyCode
	Dollar:KeyCode
	Percent:KeyCode
	Ampersand:KeyCode
	Apostrophe:KeyCode
	ParenLeft:KeyCode
	Parenright:KeyCode
	Asterisk:KeyCode
	Plus:KeyCode
	Comma:KeyCode
	Minus:KeyCode
	Period:KeyCode
	Slash:KeyCode
	Key0:KeyCode
	Key1:KeyCode
	Key2:KeyCode
	Key3:KeyCode
	Key4:KeyCode
	Key5:KeyCode
	Key6:KeyCode
	Key7:KeyCode
	Key8:KeyCode
	Key9:KeyCode
	Colon:KeyCode
	Semicolon:KeyCode
	Less:KeyCode
	Equal:KeyCode
	Greater:KeyCode
	Question:KeyCode
	At:KeyCode
	A:KeyCode
	B:KeyCode
	C:KeyCode
	D:KeyCode
	E:KeyCode
	F:KeyCode
	G:KeyCode
	H:KeyCode
	I:KeyCode
	J:KeyCode
	K:KeyCode
	L:KeyCode
	M:KeyCode
	N:KeyCode
	O:KeyCode
	P:KeyCode
	Q:KeyCode
	R:KeyCode
	S:KeyCode
	T:KeyCode
	U:KeyCode
	V:KeyCode
	W:KeyCode
	X:KeyCode
	Y:KeyCode
	Z:KeyCode
	BracketLeft:KeyCode
	Backslash:KeyCode
	BracketRight:KeyCode
	Asciicircum:KeyCode
	Underscore:KeyCode
	QuoteLeft:KeyCode
	BraceLeft:KeyCode
	Bar:KeyCode
	BraceRight:KeyCode
	Asciitilde:KeyCode
	Yen:KeyCode
	Section:KeyCode
	GamepadA:KeyCode
	GamepadB:KeyCode
	GamepadX:KeyCode
	GamepadY:KeyCode
	GamepadBack:KeyCode
	GamepadGuide:KeyCode
	GamepadStart:KeyCode
	GamepadLeftStick:KeyCode
	GamepadRightStick:KeyCode
	GamepadLeftShoulder:KeyCode
	GamepadRightShoulder:KeyCode
	GamepadDpadUp:KeyCode
	GamepadDpadDown:KeyCode
	GamepadDpadLeft:KeyCode
	GamepadDpadRight:KeyCode
	GamepadPaddle1:KeyCode
	GamepadPaddle2:KeyCode
	GamepadPaddle3:KeyCode
	GamepadPaddle4:KeyCode
	GamepadTouchpad:KeyCode
	MouseLeft:KeyCode
	MouseRight:KeyCode
	MouseMiddle:KeyCode
	MouseWheelUp:KeyCode
	MouseWheelDown:KeyCode
	MouseWheelLeft:KeyCode
	MouseWheelRight:KeyCode
	MouseXbutton1:KeyCode
	MouseXbutton2:KeyCode
	GamepadAxisLeftX:KeyCode
	GamepadAxisLeftY:KeyCode
	GamepadAxisRightX:KeyCode
	GamepadAxisRightY:KeyCode
	GamepadAxisTriggerLeft:KeyCode
	GamepadAxisTriggerRight:KeyCode
	Special:KeyCode
	Escape:KeyCode
	Tab:KeyCode
	Backtab:KeyCode
	Backspace:KeyCode
	Enter:KeyCode
	KpEnter:KeyCode
	Insert:KeyCode
	Delete:KeyCode
	Left:KeyCode
	Up:KeyCode
	Right:KeyCode
	Down:KeyCode
	PageUp:KeyCode
	PageDown:KeyCode
	Shift:KeyCode
	Ctrl:KeyCode
	Meta:KeyCode
	Alt:KeyCode
	CapsLock:KeyCode
	NumLock:KeyCode
	ScrollLock:KeyCode
	F1:KeyCode
	F2:KeyCode
	F3:KeyCode
	F4:KeyCode
	F5:KeyCode
	F6:KeyCode
	F7:KeyCode
	F8:KeyCode
	F9:KeyCode
	F10:KeyCode
	F11:KeyCode
	F12:KeyCode
	Menu:KeyCode
	Hyper:KeyCode
	KpMultiply:KeyCode
	KpDivide:KeyCode
	KpSubtract:KeyCode
	KpPeriod:KeyCode
	KpAdd:KeyCode
	Kp0:KeyCode
	Kp1:KeyCode
	Kp2:KeyCode
	Kp3:KeyCode
	Kp4:KeyCode
	Kp5:KeyCode
	Kp6:KeyCode
	Kp7:KeyCode
	Kp8:KeyCode
	Kp9:KeyCode
	Unknown:KeyCode
end
declare class TweenTransition end
declare class TweenTransitionEnum extends Enum
	Linear:TweenTransition
	Sine:TweenTransition
	Quint:TweenTransition
	Quart:TweenTransition
	Quad:TweenTransition
	Expo:TweenTransition
	Elastic:TweenTransition
	Cubic:TweenTransition
	Circ:TweenTransition
	Bounce:TweenTransition
	Back:TweenTransition
	Spring:TweenTransition
end
declare class TweenDirection end
declare class TweenDirectionEnum extends Enum
	In:TweenDirection
	Out:TweenDirection
	InOut:TweenDirection
	OutIn:TweenDirection
end
declare class CharacterAttachment end
declare class CharacterAttachmentEnum extends Enum
	Head:CharacterAttachment
	UpperTorso:CharacterAttachment
	LowerTorso:CharacterAttachment
	ShoulderLeft:CharacterAttachment
	ShoulderRight:CharacterAttachment
	ElbowLeft:CharacterAttachment
	ElbowRight:CharacterAttachment
	HandLeft:CharacterAttachment
	HandRight:CharacterAttachment
	LegLeft:CharacterAttachment
	LegRight:CharacterAttachment
	KneeLeft:CharacterAttachment
	KneeRight:CharacterAttachment
	FootLeft:CharacterAttachment
	FootRight:CharacterAttachment
end
declare class UILayoutAlignment end
declare class UILayoutAlignmentEnum extends Enum
	Start:UILayoutAlignment
	Center:UILayoutAlignment
	End:UILayoutAlignment
end
declare class BuiltInAudioPreset end
declare class BuiltInAudioPresetEnum extends Enum
	Jump:BuiltInAudioPreset
	Explosion:BuiltInAudioPreset
end
declare class ClientPlatform end
declare class ClientPlatformEnum extends Enum
	Desktop:ClientPlatform
	Mobile:ClientPlatform
	VR:ClientPlatform
end
declare class UIMaskMode end
declare class MaskModeEnum extends Enum
	Disabled:UIMaskMode
	ClipOnly:UIMaskMode
	ClipAndDraw:UIMaskMode
end
declare class UIScrollMode end
declare class ScrollModeEnum extends Enum
	Disabled:UIScrollMode
	Auto:UIScrollMode
	AlwaysShow:UIScrollMode
	NeverShow:UIScrollMode
end
declare class ImageStretchMode end
declare class ImageStretchModeEnum extends Enum
	Stretch:ImageStretchMode
	Centered:ImageStretchMode
	Covered:ImageStretchMode
end
declare class GrabbablePermissionMode end
declare class GrabbablePermissionModeEnum extends Enum
	None:GrabbablePermissionMode
	Everyone:GrabbablePermissionMode
	Scripted:GrabbablePermissionMode
end
declare class ParticleSimulationSpace end
declare class ParticleSimulationSpaceEnum extends Enum
	Local:ParticleSimulationSpace
	World:ParticleSimulationSpace
end
declare class ParticleEmissionShape end
declare class ParticleEmissionShapeEnum extends Enum
	Point:ParticleEmissionShape
	Sphere:ParticleEmissionShape
	SphereSurface:ParticleEmissionShape
	Box:ParticleEmissionShape
	Ring:ParticleEmissionShape
end
declare class GradientImageFill end
declare class GradientImageFillEnum extends Enum
	Linear:GradientImageFill
	Radial:GradientImageFill
	Square:GradientImageFill
end
declare class BlendMode end
declare class BlendModeEnum extends Enum
	Mix:BlendMode
	Add:BlendMode
	Subtract:BlendMode
	Multiply:BlendMode
end
declare class FontStyle end
declare class FontStyleEnum extends Enum
	Normal:FontStyle
	Italic:FontStyle
end
declare class FontWeight end
declare class FontWeightEnum extends Enum
	Thin:FontWeight
	ExtraLight:FontWeight
	Light:FontWeight
	Regular:FontWeight
	Medium:FontWeight
	SemiBold:FontWeight
	Bold:FontWeight
	ExtraBold:FontWeight
	Black:FontWeight
end
declare class MeshAnimationType end
declare class MeshAnimationTypeEnum extends Enum
	Normal:MeshAnimationType
	Looped:MeshAnimationType
	PingPong:MeshAnimationType
	OneShot:MeshAnimationType
	OneShotImpluse:MeshAnimationType
end
declare class ParticleOrientation end
declare class ParticleOrientationEnum extends Enum
	FaceCamera:ParticleOrientation
	FaceCameraFixedY:ParticleOrientation
end
declare class CreatorToolMode end
declare class ToolModeEnum extends Enum
	Select:CreatorToolMode
	Move:CreatorToolMode
	Rotate:CreatorToolMode
	Scale:CreatorToolMode
	Paint:CreatorToolMode
	Brush:CreatorToolMode
end
declare class AddonPermission end
declare class AddonPermissionEnum extends Enum
	IORead:AddonPermission
	IOWrite:AddonPermission
end
type ENUM_LIST = {
	AmbientSource:AmbientSourceEnum,
	CameraMode:CameraModeEnum,
	MeshCollisionType:CollisionTypeEnum,
	HorizontalAlignment:TextHorizontalAlignmentEnum,
	VerticalAlignment:TextVerticalAlignmentEnum,
	TextTrimming:TextTrimmingEnum,
	ImageType:ImageTypeEnum,
	PartMaterial:PartMaterialEnum,
	PartShape:ShapeEnum,
	SkyboxPreset:SkyboxEnum,
	FontPreset:BuiltInTextFontPresetEnum,
	ForceMode:ForceModeEnum,
	HttpRequestMethod:HttpRequestMethodEnum,
	KeyCode:KeyCodeEnum,
	TweenTransition:TweenTransitionEnum,
	TweenDirection:TweenDirectionEnum,
	CharacterAttachment:CharacterAttachmentEnum,
	UILayoutAlignment:UILayoutAlignmentEnum,
	BuiltInAudioPreset:BuiltInAudioPresetEnum,
	ClientPlatform:ClientPlatformEnum,
	UIMaskMode:MaskModeEnum,
	UIScrollMode:ScrollModeEnum,
	ImageStretchMode:ImageStretchModeEnum,
	GrabbablePermissionMode:GrabbablePermissionModeEnum,
	ParticleSimulationSpace:ParticleSimulationSpaceEnum,
	ParticleEmissionShape:ParticleEmissionShapeEnum,
	GradientImageFill:GradientImageFillEnum,
	BlendMode:BlendModeEnum,
	FontStyle:FontStyleEnum,
	FontWeight:FontWeightEnum,
	MeshAnimationType:MeshAnimationTypeEnum,
	ParticleOrientation:ParticleOrientationEnum,
	CreatorToolMode:ToolModeEnum,
	AddonPermission:AddonPermissionEnum,
} & { }
declare Enums: ENUM_LIST
declare class NetworkedObject
	Name : string
	ClassName : string
	Shared : ScriptSharedTable
	NetworkedObjectID : string
	ObjectID : string
	ExistInNetwork : boolean
	PropertyChanged : PTSignal<string>
	Renamed : PTSignal
	TreeEntered : PTSignal
	TreeExited : PTSignal
	function IsA(self, className: string): boolean
	function Clone(self, parent: NetworkedObject?): NetworkedObject
	function Destroy(self, time: number?): nil
	function Delete(self, time: number?): nil
end
declare NetworkedObject: {
__tostring: (NetworkedObject) -> (string),
__eq: (any, any) -> (boolean),
}


declare class Instance extends NetworkedObject
	Parent : Instance
	EditableChildren : boolean
	Tags : { string }
	Archivable : boolean
	ChildAdded : PTSignal<Instance>
	ChildRemoved : PTSignal<Instance>
	ChildDeleting : PTSignal<Instance>
	ChildDeleted : PTSignal<Instance>
	function GetDescendants(self): { Instance }
	function FindChild(self, name: string): Instance
	function WaitChild(self, name: string, timeoutSec: number?): Instance
	function FindChildByClass(self, className: string): Instance
	function FindChildWithTag(self, tag: string): Instance
	function GetChildrenWithTag(self, tag: string): { Instance }
	function GetDescendantsWithTag(self, tag: string): { Instance }
	function FindAncestorByClass(self, className: string): Instance
	function FindChildByIndex(self, index: number): Instance
	function MoveChild(self, child: Instance, index: number): nil
	function GetChildren(self): { Instance }
	function GetChildrenOfClass(self, className: string): { Instance }
	function IsAncestorOf(self, instance: Instance): boolean
	function IsDescendantOf(self, instance: Instance): boolean
	function IsDescendantOfClass(self, className: string): boolean
	function AddTag(self, tag: string): nil
	function RemoveTag(self, tag: string): nil
	function HasTag(self, tag: string): boolean
	function Reparent(self, to: Instance): nil
	function GetParent(self): Instance
	function SetParent(self, newParent: Instance): nil
	function __index(self, indexer: any): any
	function __newindex(self, indexer: any): nil
end
declare Instance: {
    New: (string, Instance?) -> (Instance),
}


declare class World extends Instance
	IsLocalTest : boolean
	IsLegacyWorld : boolean
	WorldID : number
	ServerID : number
	UpTime : number
	ServerTime : number
	InstanceCount : number
	Rendered : PTSignal<number>
end

declare class Script extends Instance
	Source : string
	IsEnabled : boolean
	LinkedScript : FileLinkAsset
	Compatibility : boolean
	function Call(self, funcName: string, args: any): nil
	function CallAsync(self, funcName: string, args: any): nil
	function LinkWithScriptFile(self, scriptPath: string): nil
end

declare class ClientScript extends Script
end
declare ClientScript: {
    New: (NetworkedObject?) -> (ClientScript),
}


declare class ModuleScript extends Script
end
declare ModuleScript: {
    New: (NetworkedObject?) -> (ModuleScript),
}


declare class ServerScript extends Script
end
declare ServerScript: {
    New: (NetworkedObject?) -> (ServerScript),
}


declare class Dynamic extends Instance
	Position : Vector3
	Rotation : Vector3
	Size : Vector3
	LocalPosition : Vector3
	LocalRotation : Vector3
	LocalSize : Vector3
	Quaternion : Quaternion
	LocalQuaternion : Quaternion
	Locked : boolean
	Forward : Vector3
	Right : Vector3
	Up : Vector3
	function LookAt(self, target: any): nil
	function LookAt(self, target: any, up: Vector3): nil
	function Translate(self, translation: Vector3): nil
	function RotateAround(self, point: Vector3, axis: Vector3, angle: number): nil
	function Rotate(self, eulerAngles: Vector3): nil
	function GetBounds(self): Bounds
end
declare Dynamic: {
    New: (NetworkedObject?) -> (Dynamic),
}


declare class Physical extends Dynamic
	Anchored : boolean
	CanCollide : boolean
	Velocity : Vector3
	AngularVelocity : Vector3
	Touched : PTSignal<Physical>
	TouchEnded : PTSignal<Physical>
	MouseEnter : PTSignal
	MouseExit : PTSignal
	Clicked : PTSignal<Player>
	function SetNetworkAuthority(self, plr: Player): nil
	function GetTouching(self): { Physical }
	function MovePosition(self, position: Vector3): nil
	function MoveRotation(self, rotation: Vector3): nil
end

declare class Entity extends Physical
	Color : Color
	CastShadows : boolean
	IsSpawn : boolean
	UseGravity : boolean
	Mass : number
	Friction : number
	Drag : number
	AngularDrag : number
	Bounciness : number
	function AddForce(self, force: Vector3, mode: ForceMode?): nil
	function AddTorque(self, force: Vector3, mode: ForceMode?): nil
	function AddForceAtPosition(self, force: Vector3, position: Vector3, mode: ForceMode?): nil
	function AddRelativeForce(self, force: Vector3, mode: ForceMode?): nil
	function AddRelativeTorque(self, torque: Vector3, mode: ForceMode?): nil
end

declare class Part extends Entity
	Shape : PartShape
	Material : PartMaterial
	Color : Color
	CastShadows : boolean
end
declare Part: {
    New: (NetworkedObject?) -> (Part),
}


declare class Seat extends Part
	Occupant : NPC
	CanNPCSit : boolean
	Sat : PTSignal<NPC>
	Vacated : PTSignal<NPC>
end
declare Seat: {
    New: (NetworkedObject?) -> (Seat),
}


declare class Truss extends Part
	ClimbSpeed : number
end
declare Truss: {
    New: (NetworkedObject?) -> (Truss),
}


declare class Mesh extends Entity
	Asset : MeshAsset
	IncludeOffset : boolean
	CollisionType : MeshCollisionType
	PlayAnimationOnStart : boolean
	UsePartColor : boolean
	Color : Color
	CastShadows : boolean
	CurrentAnimation : string
	IsAnimationPlaying : boolean
	Loading : boolean
	Loaded : PTSignal
	function PlayAnimation(self, animationName: string, speed: number?, loop: boolean?): nil
	function StopAnimation(self, animationName: string?): nil
	function GetAnimations(self): { string }
	function GetAnimationInfo(self): { MeshAnimationInfo }
end
declare Mesh: {
    New: (NetworkedObject?) -> (Mesh),
}


declare class NPC extends Physical
	SeatOffset : Vector3
	Health : number
	MaxHealth : number
	JumpPower : number
	WalkSpeed : number
	UseNametag : boolean
	NametagOffset : Vector3
	NametagVisibleRadius : number
	DisplayName : string
	JumpSound : Sound
	IsSitting : boolean
	IsDead : boolean
	HoldingTool : Tool
	SittingIn : Seat
	Character : CharacterModel
	MoveTarget : Dynamic
	IsOnGround : boolean
	IsOnCeiling : boolean
	NavDestinationDistance : number
	NavDestinationReached : boolean
	NavDestinationValid : boolean
	Died : PTSignal
	Landed : PTSignal
	NavFinished : PTSignal
	function Kill(self): nil
	function Jump(self): nil
	function Sit(self, seat: Seat): nil
	function Unsit(self, addForce: boolean?): nil
	function EquipTool(self, tool: Tool): nil
	function DropTool(self): nil
	function LoadAppearance(self, userID: number): nil
	function ClearAppearance(self): nil
	function SetNavDestination(self, pos: Vector3): nil
	function Respawn(self): nil
	function TakeDamage(self, dmg: number): nil
	function Heal(self, amount: number): nil
end
declare NPC: {
    New: (NetworkedObject?) -> (NPC),
}


declare class Player extends NPC
	UserID : number
	CanMove : boolean
	SprintSpeed : number
	Stamina : number
	MaxStamina : number
	UseStamina : boolean
	StaminaRegen : number
	StaminaBurn : number
	RespawnTime : number
	UseHeadTurning : boolean
	UseBubbleChat : boolean
	AutoLoadAppearance : boolean
	AllowAnimationWhileMoving : boolean
	Team : Team
	NetworkPing : number
	IsAdmin : boolean
	IsCreator : boolean
	ChatColor : Color
	IsLocal : boolean
	IsClimbing : boolean
	ClimbingTruss : Truss
	UserPlatform : ClientPlatform
	Inventory : Inventory
	Chatted : PTSignal<string>
	StatChanged : PTSignal<Stat, any>
	TeamChanged : PTSignal<Team>
	Respawned : PTSignal
	function Jump(self): nil
	function Kick(self, reason: string): nil
	function UnequipTool(self): nil
	function Respawn(self): nil
	function ResetAppearance(self): nil
end

declare class PhysicalModel extends Physical
end
declare PhysicalModel: {
    New: (NetworkedObject?) -> (PhysicalModel),
}


declare class Tool extends PhysicalModel
	Droppable : boolean
	IconImage : ImageAsset
	Holder : NPC
	Equipped : PTSignal
	Unequipped : PTSignal
	Activated : PTSignal
	Deactivated : PTSignal
	function Activate(self): nil
	function Deactivate(self): nil
	function PlayAnimation(self, animationName: string): nil
end
declare Tool: {
    New: (NetworkedObject?) -> (Tool),
}


declare class CharacterModel extends Dynamic
	Animator : Animator
	function GetAttachment(self, attachmentEnum: CharacterAttachment): Dynamic
end
declare CharacterModel: {
    New: (NetworkedObject?) -> (CharacterModel),
}


declare class PolytorianModel extends CharacterModel
	HeadColor : Color
	TorsoColor : Color
	LeftArmColor : Color
	RightArmColor : Color
	LeftLegColor : Color
	RightLegColor : Color
	FaceImage : ImageAsset
	BodyMesh : MeshAsset
	Ragdolling : boolean
	RagdollPosition : Vector3
	RagdollRotation : Vector3
	RagdollStarted : PTSignal
	RagdollStopped : PTSignal
	function StartRagdoll(self, force: Vector3?): nil
	function StopRagdoll(self): nil
	function GetAttachment(self, attachmentEnum: CharacterAttachment): Dynamic
	function LoadAppearance(self, userID: number, loadTool: boolean?): nil
	function ClearAppearance(self): nil
end
declare PolytorianModel: {
    New: (NetworkedObject?) -> (PolytorianModel),
}


declare class Camera extends Dynamic
	Mode : CameraMode
	FOV : number
	ClipThroughWalls : boolean
	MinDistance : number
	MaxDistance : number
	Distance : number
	ScrollSensitivity : number
	Orthographic : boolean
	FollowLerp : boolean
	LerpSpeed : number
	OrthographicSize : number
	PositionOffset : Vector3
	RotationOffset : Vector3
	IsFirstPerson : boolean
	CanLock : boolean
	SensitivityMultiplier : number
	Sensitivity : number
	HorizontalSpeed : number
	VerticalSpeed : number
	ScrollLerpSpeed : number
	CtrlLocked : boolean
	AlwaysLocked : boolean
	Target : Dynamic
	FirstPersonEntered : PTSignal
	FirstPersonExited : PTSignal
	function IsPositionInView(self, pos: Vector3): boolean
	function IsPositionBehind(self, pos: Vector3): boolean
	function ViewportPointToRay(self, pos: Vector2, ignoreList: { Instance }?, maxDistance: number?): RayResult
	function ScreenPointToRay(self, pos: Vector2, ignoreList: { Instance }?, maxDistance: number?): RayResult
	function ViewportToScreenPoint(self, pos: Vector2): Vector2
	function ViewportToWorldPoint(self, pos: Vector2): Vector3
	function WorldToViewportPoint(self, pos: Vector3): Vector2
	function WorldToScreenPoint(self, pos: Vector3): Vector2
	function ScreenToViewportPoint(self, pos: Vector2): Vector2
	function ScreenToWorldPoint(self, pos: Vector2): Vector3
end
declare Camera: {
    New: (NetworkedObject?) -> (Camera),
}


declare class Light extends Dynamic
	Color : Color
	Brightness : number
	Specular : number
	Shadows : boolean
end

declare class SunLight extends Light
end

declare class PointLight extends Light
	Range : number
end
declare PointLight: {
    New: (NetworkedObject?) -> (PointLight),
}


declare class SpotLight extends Light
	Range : number
	Angle : number
end
declare SpotLight: {
    New: (NetworkedObject?) -> (SpotLight),
}


declare class Sound extends Dynamic
	Audio : AudioAsset
	Volume : number
	Pitch : number
	Autoplay : boolean
	Loop : boolean
	PlayInWorld : boolean
	Paused : boolean
	MaxDistance : number
	Time : number
	Playing : boolean
	Loading : boolean
	Length : number
	Loaded : PTSignal
	function Play(self): nil
	function PlayOneShot(self, volume: number?): nil
	function Pause(self): nil
	function Stop(self): nil
end
declare Sound: {
    New: (NetworkedObject?) -> (Sound),
}


declare class Accessory extends Dynamic
	TargetAttachment : CharacterAttachment
end
declare Accessory: {
    New: (NetworkedObject?) -> (Accessory),
}


declare class Decal extends Dynamic
	Image : ImageAsset
	Energy : number
	Color : Color
end
declare Decal: {
    New: (NetworkedObject?) -> (Decal),
}


declare class Explosion extends Dynamic
	Radius : number
	Force : number
	AffectAnchored : boolean
	Damage : number
	AffectPredicate : () -> ()
	Touched : PTSignal<Instance>
end
declare Explosion: {
    New: (NetworkedObject?) -> (Explosion),
}


declare class GUI3D extends Dynamic
	Shaded : boolean
	FaceCamera : boolean
	Transparent : boolean
	AbsoluteSize : Vector2
end
declare GUI3D: {
    New: (NetworkedObject?) -> (GUI3D),
}


declare class Image3D extends Dynamic
	Image : ImageAsset
	TextureScale : Vector2
	TextureOffset : Vector2
	Color : Color
	CastShadows : boolean
	Shaded : boolean
	FaceCamera : boolean
end
declare Image3D: {
    New: (NetworkedObject?) -> (Image3D),
}


declare class Marker3D extends Dynamic
	Length : number
	AppearOnTop : boolean
	VisibleInDev : boolean
end
declare Marker3D: {
    New: (NetworkedObject?) -> (Marker3D),
}


declare class Model extends Dynamic
end
declare Model: {
    New: (NetworkedObject?) -> (Model),
}


declare class Particles extends Dynamic
	Playing : boolean
	Image : ImageAsset
	Color : ColorSeries
	Lifetime : NumberRange
	Amount : number
	Gravity : Vector3
	VelocityDirection : Vector3
	InitialVelocity : NumberRange
	Spread : number
	Flatness : number
	Scale : NumberRange
	HueVariation : NumberRange
	BlendMode : BlendMode
	Shaded : boolean
	EmissionShape : ParticleEmissionShape
	EmissionShapeScale : Vector3
	SimulationSpace : ParticleSimulationSpace
	Orientation : ParticleOrientation
	function Play(self): nil
	function Stop(self): nil
	function Emit(self, count: number): nil
end
declare Particles: {
    New: (NetworkedObject?) -> (Particles),
}


declare class Text3D extends Dynamic
	Text : string
	FontSize : number
	Color : Color
	OutlineWidth : number
	OutlineColor : Color
	FaceCamera : boolean
	HorizontalAlignment : HorizontalAlignment
	VerticalAlignment : VerticalAlignment
	FontAsset : FontAsset
	UseRichText : boolean
	Shaded : boolean
end
declare Text3D: {
    New: (NetworkedObject?) -> (Text3D),
}


declare class Animator extends Instance
	CurrentAnimation : string
	function PlayAnimation(self, animationKey: string): nil
	function PlayOneShotAnimation(self, animationKey: string): nil
	function StopAnimation(self): nil
	function StopOneShotAnimation(self): nil
end
declare Animator: {
    New: (NetworkedObject?) -> (Animator),
}


declare class Environment extends Instance
	CurrentCamera : Camera
	Gravity : Vector3
	PartDestroyHeight : number
	AutoGenerateNavMesh : boolean
	function Raycast(self, origin: Vector3, direction: Vector3, maxDistance: number?, ignoreList: { Instance }?): RayResult
	function RaycastAll(self, origin: Vector3, direction: Vector3, maxDistance: number?, ignoreList: { Instance }?): { RayResult }
	function OverlapSphere(self, origin: Vector3, radius: number, ignoreList: { Instance }?): { Instance }
	function OverlapBox(self, pos: Vector3, size: Vector3, rot: Vector3, ignoreList: { Instance }?): { Instance }
	function RebuildNavMesh(self): nil
	function GetPointOnNavMesh(self, toPoint: Vector3): Vector3
end

declare class Lighting extends Instance
	Skybox : SkyboxPreset
	AmbientSource : AmbientSource
	AmbientColor : Color
	FogEnabled : boolean
	FogColor : Color
	FogStartDistance : number
	FogEndDistance : number
end

declare class Sky extends Instance
end

declare class GradientSky extends Sky
	SunDiscColor : Color
	SunDiscMultiplier : number
	SunDiscExponent : number
	SunHaloColor : Color
	SunHaloExponent : number
	SunHaloContribution : number
	HorizonLineColor : Color
	HorizonLineExponent : number
	HorizonLineContribution : number
	SkyGradientTop : Color
	SkyGradientBottom : Color
	SkyGradientExponent : number
end
declare GradientSky: {
    New: (NetworkedObject?) -> (GradientSky),
}


declare class ImageSky extends Sky
	TopImage : ImageAsset
	BottomImage : ImageAsset
	LeftImage : ImageAsset
	RightImage : ImageAsset
	FrontImage : ImageAsset
	BackImage : ImageAsset
end
declare ImageSky: {
    New: (NetworkedObject?) -> (ImageSky),
}


declare class ProceduralSky extends Sky
	SunSize : number
	SkyTint : Color
	HorizonColor : Color
	GroundColor : Color
	Exposure : number
end
declare ProceduralSky: {
    New: (NetworkedObject?) -> (ProceduralSky),
}


declare class Team extends Instance
	DisplayName : string
	Color : Color
	function GetDisplayName(self): string
	function GetPlayers(self): { Player }
end
declare Team: {
    New: (NetworkedObject?) -> (Team),
}


declare class Stat extends Instance
	DisplayName : string
	function GetDisplayName(self): string
	function Set(self, player: Player, val: number): nil
	function Set(self, player: Player, val: string): nil
	function Get(self, player: Player): any
	function GetTotalForTeam(self, team: Team): number
	function GetDisplayValue(self, plr: Player): string
end
declare Stat: {
    New: (NetworkedObject?) -> (Stat),
}


declare class HiddenBase extends Instance
end

declare class Inventory extends HiddenBase
end

declare class PlayerDefaults extends HiddenBase
	MaxHealth : number
	WalkSpeed : number
	SprintSpeed : number
	JumpPower : number
	RespawnTime : number
	ChatColor : Color
	CanMove : boolean
	StaminaBurn : number
	UseStamina : boolean
	StaminaEnabled : boolean
	Stamina : number
	MaxStamina : number
	StaminaRegen : number
	UseHeadTurning : boolean
	UseBubbleChat : boolean
	AutoLoadAppearance : boolean
	LoadAppearanceTools : boolean
	function LoadDefaults(self): nil
end

declare class Hidden extends HiddenBase
end

declare class ServerHidden extends HiddenBase
end

declare class Temporary extends ServerHidden
end

declare class UIField extends Instance
	PositionOffset : Vector2
	PositionRelative : Vector2
	Rotation : number
	SizeOffset : Vector2
	SizeRelative : Vector2
	ClipDescendants : boolean
	PivotPoint : Vector2
	Scale : Vector2
	Visible : boolean
	MaskMode : UIMaskMode
	IgnoreMouse : boolean
	ZIndex : number
	AbsolutePosition : Vector2
	AbsoluteSize : Vector2
	IsVisibleInTree : boolean
	MouseEnter : PTSignal
	MouseExit : PTSignal
	MouseDown : PTSignal
	MouseUp : PTSignal
	TransformChanged : PTSignal
	VisibilityChanged : PTSignal
end
declare UIField: {
    New: (NetworkedObject?) -> (UIField),
}


declare class UIView extends UIField
	BorderColor : Color
	Color : Color
	BorderWidth : number
	CornerRadius : number
end
declare UIView: {
    New: (NetworkedObject?) -> (UIView),
}


declare class UILabel extends UIView
	Text : string
	TextColor : Color
	OutlineWidth : number
	OutlineColor : Color
	HorizontalAlignment : HorizontalAlignment
	VerticalAlignment : VerticalAlignment
	FontSize : number
	UseRichText : boolean
	FontAsset : FontAsset
	TextTrimming : TextTrimming
	TextWrapped : boolean
end
declare UILabel: {
    New: (NetworkedObject?) -> (UILabel),
}


declare class UIButton extends UILabel
	Clicked : PTSignal
end
declare UIButton: {
    New: (NetworkedObject?) -> (UIButton),
}


declare class UITextInput extends UIView
	Text : string
	TextColor : Color
	JustifyText : HorizontalAlignment
	FontSize : number
	IsMultiline : boolean
	Placeholder : string
	PlaceholderColor : Color
	ReadOnlyColor : Color
	IsReadOnly : boolean
	FontAsset : FontAsset
	Submitted : PTSignal<string>
	Changed : PTSignal<string>
	FocusEnter : PTSignal
	FocusExit : PTSignal
	function Focus(self): nil
end
declare UITextInput: {
    New: (NetworkedObject?) -> (UITextInput),
}


declare class UIContainer extends UIField
end

declare class UIHVLayout extends UIContainer
	Spacing : number
	ChildAlignment : UILayoutAlignment
end

declare class UIFlowLayout extends UIHVLayout
end

declare class UIHFlow extends UIFlowLayout
end
declare UIHFlow: {
    New: (NetworkedObject?) -> (UIHFlow),
}


declare class UIVFlow extends UIFlowLayout
end
declare UIVFlow: {
    New: (NetworkedObject?) -> (UIVFlow),
}


declare class UIHLayout extends UIHVLayout
end
declare UIHLayout: {
    New: (NetworkedObject?) -> (UIHLayout),
}


declare class UIVLayout extends UIHVLayout
end
declare UIVLayout: {
    New: (NetworkedObject?) -> (UIVLayout),
}


declare class UIGridLayout extends UIContainer
	Spacing : number
	Columns : number
end
declare UIGridLayout: {
    New: (NetworkedObject?) -> (UIGridLayout),
}


declare class UIScrollView extends UIContainer
	HorizontalScrollMode : UIScrollMode
	VerticalScrollMode : UIScrollMode
end
declare UIScrollView: {
    New: (NetworkedObject?) -> (UIScrollView),
}


declare class UIImage extends UIField
	Image : ImageAsset
	Color : Color
	StretchMode : ImageStretchMode
	Loading : boolean
end
declare UIImage: {
    New: (NetworkedObject?) -> (UIImage),
}


declare class UIViewport extends UIField
end
declare UIViewport: {
    New: (NetworkedObject?) -> (UIViewport),
}


declare class Players extends Instance
	LocalPlayer : Player
	PlayerCollisionEnabled : boolean
	UseServerAuthority : boolean
	PlayersCount : number
	PlayerAdded : PTSignal<Player>
	PlayerRemoved : PTSignal<Player>
	function GetPlayers(self): { Player }
	function GetPlayer(self, username: string): Player
	function GetPlayerByID(self, userID: number): Player
end

declare class PlayerGUI extends Instance
end

declare class Stats extends Instance
	function GetStats(self): { Stat }
end

declare class Teams extends Instance
	function GetTeams(self): { Team }
end

declare class GUI extends Instance
	Visible : boolean
	ZIndex : number
end
declare GUI: {
    New: (NetworkedObject?) -> (GUI),
}


declare class BindableEvent extends Instance
	Invoked : PTSignal
	function Invoke(self, par: any): nil
end
declare BindableEvent: {
    New: (NetworkedObject?) -> (BindableEvent),
}


declare class BodyPosition extends Instance
	TargetPosition : Vector3
	Force : number
	AcceptanceDistance : number
end
declare BodyPosition: {
    New: (NetworkedObject?) -> (BodyPosition),
}


declare class ValueBase extends Instance
	Changed : PTSignal
end

declare class BoolValue extends ValueBase
	Value : boolean
end
declare BoolValue: {
    New: (NetworkedObject?) -> (BoolValue),
}


declare class ColorValue extends ValueBase
	Value : Color
end
declare ColorValue: {
    New: (NetworkedObject?) -> (ColorValue),
}


declare class InstanceValue extends ValueBase
	Value : Instance
end
declare InstanceValue: {
    New: (NetworkedObject?) -> (InstanceValue),
}


declare class IntValue extends ValueBase
	Value : number
end
declare IntValue: {
    New: (NetworkedObject?) -> (IntValue),
}


declare class NumberValue extends ValueBase
	Value : number
end
declare NumberValue: {
    New: (NetworkedObject?) -> (NumberValue),
}


declare class StringValue extends ValueBase
	Value : string
end
declare StringValue: {
    New: (NetworkedObject?) -> (StringValue),
}


declare class Vector2Value extends ValueBase
	Value : Vector2
end
declare Vector2Value: {
    New: (NetworkedObject?) -> (Vector2Value),
}


declare class Vector3Value extends ValueBase
	Value : Vector3
end
declare Vector3Value: {
    New: (NetworkedObject?) -> (Vector3Value),
}


declare class Clothing extends Instance
	Image : ImageAsset
end
declare Clothing: {
    New: (NetworkedObject?) -> (Clothing),
}


declare class LightingModifier extends Instance
end

declare class ColorAdjustModifier extends LightingModifier
	Brightness : number
	Contrast : number
	Saturation : number
	TintColor : Color
end
declare ColorAdjustModifier: {
    New: (NetworkedObject?) -> (ColorAdjustModifier),
}


declare class Folder extends Instance
end
declare Folder: {
    New: (NetworkedObject?) -> (Folder),
}


declare class Grabbable extends Instance
	Force : number
	MaxRange : number
	MaxGrabbableRange : number
	UseDragForce : boolean
	PermissionMode : GrabbablePermissionMode
	Dragger : Player
	PermissionPredicate : () -> ()
	Grabbed : PTSignal<Player>
	Released : PTSignal<Player>
end
declare Grabbable: {
    New: (NetworkedObject?) -> (Grabbable),
}


declare class MissingInstance extends Instance
end

declare class NetworkEvent extends Instance
	Reliable : boolean
	InvokedServer : PTSignal<Player, NetMessage>
	InvokedClient : PTSignal<NetMessage>
	function InvokeServer(self, msg: NetMessage?, _: any?): nil
	function InvokeClient(self, msg: NetMessage?, player: Player?): nil
	function InvokeClients(self, msg: NetMessage?): nil
end
declare NetworkEvent: {
    New: (NetworkedObject?) -> (NetworkEvent),
}


declare class InputService extends Instance
	IsWindowFocused : boolean
	IsTouchscreen : boolean
	IsGameFocused : boolean
	IsInputFocused : boolean
	IsGamepadConnected : boolean
	IsMenuOpened : boolean
	CursorLocked : boolean
	CursorVisible : boolean
	MousePosition : Vector2
	ScreenWidth : number
	ScreenHeight : number
	GameFocused : PTSignal
	GameUnfocused : PTSignal
	GamepadConnected : PTSignal
	GamepadDisconnected : PTSignal
	KeyDown : PTSignal<KeyCodeEnum, boolean>
	KeyUp : PTSignal<KeyCodeEnum, boolean>
	AxisValueChanged : PTSignal<KeyCodeEnum, number>
	function GetMouseWorldPosition(self, ignoreList: { Instance }?): Vector3
	function GetVector2(self, actionName: string): InputActionVector2
	function GetButton(self, actionName: string): InputActionButton
	function GetAxis(self, actionName: string): InputActionAxis
	function BindButton(self, name: string): InputActionButton
	function BindAxis(self, name: string): InputActionAxis
	function BindVector2(self, name: string): InputActionVector2
end

declare class ScriptService extends Instance
end

declare class ChatService extends Instance
	ChatPredicate : () -> ()
	NewChatMessage : PTSignal<Player, string>
	MessageReceived : PTSignal<string>
	MessageDeclined : PTSignal
	function BroadcastMessage(self, msg: string): nil
	function UnicastMessage(self, msg: string, plr: Player): nil
end

declare class FilterService extends Instance
end
declare FilterService: {
Filter: (string) -> (string),
}


declare class AssetsService extends Instance
	function GetFileLinkByPath(self, path: string): FileLinkAsset
	function GetFileLinkByID(self, id: string): FileLinkAsset
end

declare class AchievementsService extends Instance
	UseAchievementSound : boolean
	NotifyAchievements : boolean
	GotAchievement : PTSignal<number>
	function AwardAsync(self, userID: number, achievementID: number): nil
	function HasAchievementAsync(self, userID: number, achievementID: number): boolean
end

declare class CoreUIService extends Instance
	UseUserCard : boolean
	UseChat : boolean
	UseHealthBar : boolean
	UseLeaderboard : boolean
	UseHotbar : boolean
	UseBackpack : boolean
	UseMenuButton : boolean
	UseEmoteWheel : boolean
	CanRespawn : boolean
end

declare class CaptureService extends Instance
	OnCooldown : boolean
	CanCapture : boolean
	DefaultCaptureOverlay : UIField
	SpectatorAttach : Dynamic
	function TakePhotoAtDynamic(self, dyn: Dynamic, photoSize: Vector2?, overlay: UIField?): nil
	function TakePhotoAt(self, pos: Vector3, rot: Vector3, photoSize: Vector2?, overlay: UIField?): nil
end

declare class DatastoreService extends Instance
	function GetDatastore(self, key: string): Datastore
end

declare class HttpService extends Instance
	function RequestAsync(self, data: HttpRequestData): HttpResponseData
	function GetAsync(self, url: string, headers: { any }?): string
	function PostAsync(self, url: string, body: string, headers: { any }?): string
	function PutAsync(self, url: string, body: string, headers: { any }?): string
	function DeleteAsync(self, url: string, body: string, headers: { any }?): string
	function PatchAsync(self, url: string, body: string, headers: { any }?): string
	function GetBufferAsync(self, url: string, headers: { any }?): buffer
	function PostBufferAsync(self, url: string, body: string, headers: { any }?): buffer
	function PutBufferAsync(self, url: string, body: string, headers: { any }?): buffer
	function DeleteBufferAsync(self, url: string, body: string, headers: { any }?): buffer
	function PatchBufferAsync(self, url: string, body: string, headers: { any }?): buffer
end

declare class InsertService extends Instance
	function DefaultNPC(self): NPC
	function InitializeDefaultNPC(self, npc: NPC): nil
	function DefaultCharacter(self): PolytorianModel
	function ModelAsync(self, id: number): Instance
	function AccessoryAsync(self, id: number): Accessory
	function ToolAsync(self, id: number): Tool
end

declare class PurchasesService extends Instance
	function PromptAsync(self, player: Player, assetID: number): boolean
	function OwnsItemAsync(self, player: Player, assetID: number): boolean
end

declare class TweenService extends Instance
	function NewTween(self): TweenObject
end

declare class PresenceService extends Instance
	State : string
	CoverImage : PTImageAsset
	function ResetTimer(self): nil
end

declare class PreferencesService extends Instance
	SettingChanged : PTSignal<string, any>
end
declare PreferencesService: {
	UsePhotoMode : boolean,
	UsePostProcessing : boolean,
}


declare class IOService extends Instance
	function ReadBytesFromPath(self, path: string): buffer
	function ReadTextFromPath(self, path: string): string
	function WriteBytesToPath(self, path: string, bytes: buffer): nil
	function WriteTextToPath(self, path: string, txt: string): nil
	function ListProjectFiles(self): { string }
	function ReadBytesFromID(self, id: string): buffer
	function GetPathFromID(self, indexID: string): string
end

declare class WorldsService extends Instance
	function NewServerAsync(self, placePath: string): string
	function NewServerAsync(self, data: NewServerRequestData): string
	function JoinPlaceAsync(self, plr: Player, to: string): nil
	function JoinPlacePartyAsync(self, plrs: { Player }, to: string): nil
	function JoinPrivateAsync(self, plr: Player, accessID: string): nil
	function JoinPrivatePartyAsync(self, players: { Player }, accessID: string): nil
end

declare class SocialService extends Instance
end

declare class CreatorContextService extends Instance
end

declare class CreatorHistory extends Instance
	function NewAction(self, title: string): nil
	function AddDoCallback(self, callback: () -> ()): nil
	function AddUndoCallback(self, callback: () -> ()): nil
	function CommitAction(self): nil
end

declare class CreatorSelections extends Instance
	Selected : PTSignal<Instance>
	Deselected : PTSignal<Instance>
	function Select(self, instance: Instance): nil
	function SelectChild(self, instance: Instance): nil
	function GetSelected(self): { Instance }
	function Deselect(self, instance: Instance): nil
	function SelectOnly(self, instance: Instance): nil
	function DeselectAll(self): nil
	function HasSelected(self, instance: Instance): boolean
end

declare class CreatorAddons extends Instance
	function Register(self, identifier: string): AddonObject
end

declare class CreatorGUI extends Instance
end

declare class BaseAsset extends NetworkedObject
end

declare class FileLinkAsset extends BaseAsset
	LinkedID : string
end
declare FileLinkAsset: {
    New: (NetworkedObject?) -> (FileLinkAsset),
}


declare class ResourceAsset extends BaseAsset
end

declare class ImageAsset extends ResourceAsset
end

declare class PTImageAsset extends ImageAsset
	ImageID : number
	ImageType : ImageType
end
declare PTImageAsset: {
    New: (NetworkedObject?) -> (PTImageAsset),
}


declare class GradientImageAsset extends ImageAsset
	Series : ColorSeries
	Width : number
	Height : number
	Fill : GradientImageFill
	FillFrom : Vector2
	FillTo : Vector2
end
declare GradientImageAsset: {
    New: (NetworkedObject?) -> (GradientImageAsset),
}


declare class MeshAnimationAsset extends ResourceAsset
	AnimationType : MeshAnimationType
end

declare class PTMeshAnimationAsset extends MeshAnimationAsset
	AssetID : number
end
declare PTMeshAnimationAsset: {
    New: (NetworkedObject?) -> (PTMeshAnimationAsset),
}


declare class AudioAsset extends ResourceAsset
end

declare class PTAudioAsset extends AudioAsset
	AudioID : number
end
declare PTAudioAsset: {
    New: (NetworkedObject?) -> (PTAudioAsset),
}


declare class BuiltInAudioAsset extends AudioAsset
	AudioPreset : BuiltInAudioPreset
end
declare BuiltInAudioAsset: {
    New: (NetworkedObject?) -> (BuiltInAudioAsset),
}


declare class MeshAsset extends ResourceAsset
end

declare class PTMeshAsset extends MeshAsset
	AssetID : number
end
declare PTMeshAsset: {
    New: (NetworkedObject?) -> (PTMeshAsset),
}


declare class FontAsset extends ResourceAsset
end

declare class BuiltInFontAsset extends FontAsset
	FontPreset : FontPreset
	FontWeight : FontWeight
	FontStyle : FontStyle
end
declare BuiltInFontAsset: {
    New: (NetworkedObject?) -> (BuiltInFontAsset),
}


declare class RayResult
	Origin : Vector3
	Direction : Vector3
	Position : Vector3
	Normal : Vector3
	Distance : number
	Instance : Instance
end

declare class MeshAnimationInfo
	Name : string
	Length : number
	IsPlaying : boolean
end

declare class TweenObject
	Looped : boolean
	Parallel : boolean
	SpeedScale : number
	IsRunning : boolean
	ElapsedTime : number
	Finished : PTSignal
	Canceled : PTSignal
	function SetDirection(self, dir: TweenDirection): TweenObject
	function SetTrans(self, trans: TweenTransition): TweenObject
	function TweenPosition(self, target: Dynamic, destination: Vector3, time: number): nil
	function TweenRotation(self, target: Dynamic, destination: Vector3, time: number): nil
	function TweenSize(self, target: Dynamic, destination: Vector3, time: number): nil
	function TweenColor(self, from: Color, to: Color, time: number, callback: () -> ()): nil
	function TweenNumber(self, from: number, to: number, time: number, callback: () -> ()): nil
	function TweenVector2(self, from: Vector2, to: Vector2, time: number, callback: () -> ()): nil
	function TweenVector3(self, from: Vector3, to: Vector3, time: number, callback: () -> ()): nil
	function TweenQuaternion(self, from: Quaternion, to: Quaternion, time: number, callback: () -> ()): nil
	function Play(self): nil
	function Pause(self): nil
	function Stop(self): nil
	function Interval(self, sec: number): nil
	function Chain(self): TweenObject
	function Cancel(self, callFinished: boolean?): nil
end

declare class InputAction
end

declare class InputActionVector2 extends InputAction
	Up : InputButtonCollection
	Down : InputButtonCollection
	Left : InputButtonCollection
	Right : InputButtonCollection
	Value : Vector2
end

declare class InputActionButton extends InputAction
	Buttons : InputButtonCollection
	IsPressed : boolean
	Weight : number
	Pressed : PTSignal
	Released : PTSignal
end

declare class InputActionAxis extends InputAction
	Negative : InputButtonCollection
	Positive : InputButtonCollection
	Value : number
end

declare class InputButtonCollection
	function AddButton(self, btn: InputButton): nil
	function RemoveButton(self, btn: InputButton): nil
end

declare class InputButton
	KeyCode : KeyCode
end
declare InputButton: {
    New: (() -> (InputButton)) & ((KeyCodeEnum) -> (InputButton)),
__eq: (InputButton, InputButton) -> (boolean),
}


declare class Datastore
	Key : string
	function GetAsync(self, key: string): any
	function SetAsync(self, key: string, value: any): nil
	function RemoveAsync(self, key: string): nil
	function Disconnect(self): nil
end

declare class HttpResponseData
	Success : boolean
	StatusCode : number
	Headers : { any }
	Body : string
	Buffer : buffer
end

declare class HttpRequestData
	URL : string
	Method : HttpRequestMethod
	Body : string
	Headers : { any }
end
declare HttpRequestData: {
    New: () -> (HttpRequestData),
}


declare class NewServerRequestData
	PlacePath : string
	MaxPlayers : number
end
declare NewServerRequestData: {
    New: () -> (NewServerRequestData),
}


declare class ColorSeries
	PointCount : number
	function Clear(self): nil
	function SetColor(self, point: number, color: Color): nil
	function RemovePoint(self, point: number): nil
	function GetOffsets(self): { number }
	function GetColors(self): { Color }
	function SetOffset(self, point: number, offset: number): nil
	function GetColor(self, point: number): Color
	function GetOffset(self, point: number): number
	function AddPoint(self, offset: number, color: Color): number
	function Lerp(self, t: number): Color
end
declare ColorSeries: {
    New: (() -> (ColorSeries)) & ((Color, Color) -> (ColorSeries)),
}


declare class NumberRange
	Min : number
	Max : number
	function Lerp(self, t: number): number
end
declare NumberRange: {
    New: (number, number) -> (NumberRange),
}


declare class NetMessage
	function AddString(self, key: string, value: string): nil
	function AddInt(self, key: string, value: number): nil
	function AddBool(self, key: string, value: boolean): nil
	function AddNumber(self, key: string, value: number): nil
	function AddVector2(self, key: string, value: Vector2): nil
	function AddVector3(self, key: string, value: Vector3): nil
	function AddColor(self, key: string, value: Color): nil
	function AddInstance(self, key: string, value: Instance): nil
	function AddBuffer(self, key: string, buffer: buffer): nil
	function GetString(self, key: string): string
	function GetInt(self, key: string): number
	function GetNumber(self, key: string): number
	function GetBool(self, key: string): boolean
	function GetVector2(self, key: string): Vector2
	function GetVector3(self, key: string): Vector3
	function GetColor(self, key: string): Color
	function GetInstance(self, key: string): Instance
	function GetBuffer(self, key: string): buffer
end
declare NetMessage: {
    New: () -> (NetMessage),
}


declare class AddonObject
	Identifier : string
	AddonName : string
	AddonIcon : PTImageAsset
	CleanupReceived : PTSignal
	function RequestPermissions(self, perms: { AddonPermissionEnum }): nil
	function CreateToolItem(self, txt: string): AddonToolItem
end

declare class AddonToolItem
	Pressed : PTSignal
end

declare class CreatorService
	LocalTestActive : boolean
	LocalTestStarted : PTSignal
	LocalTestStopped : PTSignal
end
declare CreatorService: {
	Interface : CreatorInterface,
	CurrentGame : World,
}


declare class PTCallback
end

-- duplicated ptsignalconnection

declare class PTFunction
end

declare class ScriptSharedTable
	function Clear(self): nil
	function Remove(self, key: string): nil
	function ClearPrefix(self, prefix: string): nil
	function ClearSuffix(self, suffix: string): nil
	function __index(self, index: string): any
	function __newindex(self, index: string, val: any): nil
end

declare class Bounds
	Center : Vector3
	Size : Vector3
	Extents : Vector3
	Start : Vector3
	End : Vector3
	Volume : number
end
declare Bounds: {
    New: (() -> (Bounds)) & ((Vector3, Vector3) -> (Bounds)),
__eq: (Bounds, Bounds) -> (boolean),
__tostring: (Bounds) -> (string),
ClosestPoint: (Bounds, Vector3) -> (Vector3),
Contains: (Bounds, Vector3) -> (boolean),
Encapsulate: (Bounds, Vector3) -> (Bounds),
Expand: (Bounds, number) -> (Bounds),
Intersects: (Bounds, Bounds) -> (boolean),
SetMinMax: (Bounds, Vector3, Vector3) -> (Bounds),
Distance: (Bounds, Vector3) -> (number),
SqrDistance: (Bounds, Vector3) -> (number),
}


declare class Vector3
	X : number
	Y : number
	Z : number
	Magnitude : number
	Normalized : Vector3
	SqrMagnitude : number
end
declare Vector3: {
	Forward : Vector3,
	Back : Vector3,
	Down : Vector3,
	Left : Vector3,
	One : Vector3,
	Zero : Vector3,
	Right : Vector3,
	Up : Vector3,
    New: (() -> (Vector3)) & ((number) -> (Vector3)) & ((number, number) -> (Vector3)) & ((number, number, number) -> (Vector3)) & ((Vector2) -> (Vector3)),
__add: (Vector3, Vector3) -> (Vector3),
__sub: (any, any) -> (Vector3),
__mul: (any, any) -> (any),
__div: (Vector3, number) -> (Vector3),
__mod: (Vector3, Vector3) -> (Vector3),
__unm: (Vector3) -> (Vector3),
__pow: (Vector3, Vector3) -> (Vector3),
__eq: (Vector3, Vector3) -> (boolean),
__lt: (Vector3, Vector3) -> (boolean),
__le: (Vector3, Vector3) -> (boolean),
__len: (Vector3) -> (number),
__tostring: (Vector3) -> (string),
Angle: (Vector3, Vector3) -> (number),
Cross: (Vector3, Vector3) -> (Vector3),
Distance: (Vector3, Vector3) -> (number),
Dot: (Vector3, Vector3) -> (number),
Lerp: (Vector3, Vector3, number) -> (Vector3),
Max: (Vector3, Vector3) -> (Vector3),
Min: (Vector3, Vector3) -> (Vector3),
MoveTowards: (Vector3, Vector3, number) -> (Vector3),
Normalize: (Vector3) -> (Vector3),
Project: (Vector3, Vector3) -> (Vector3),
Reflect: (Vector3, Vector3) -> (Vector3),
SignedAngle: (Vector3, Vector3, Vector3) -> (number),
Slerp: (Vector3, Vector3, number) -> (Vector3),
}


declare class Vector2
	X : number
	Y : number
	Magnitude : number
	Normalized : Vector2
	SqrMagnitude : number
end
declare Vector2: {
	Down : Vector2,
	Left : Vector2,
	One : Vector2,
	Zero : Vector2,
	Right : Vector2,
	Up : Vector2,
    New: (() -> (Vector2)) & ((number) -> (Vector2)) & ((number, number) -> (Vector2)),
__add: (Vector2, Vector2) -> (Vector2),
__sub: (Vector2, Vector2) -> (Vector2),
__mul: (Vector2, any) -> (any),
__div: (Vector2, number) -> (Vector2),
__mod: (Vector2, Vector2) -> (Vector2),
__unm: (Vector2) -> (Vector2),
__pow: (Vector2, Vector2) -> (Vector2),
__eq: (Vector2, Vector2) -> (boolean),
__lt: (Vector2, Vector2) -> (boolean),
__le: (Vector2, Vector2) -> (boolean),
__len: (Vector2) -> (number),
__tostring: (Vector2) -> (string),
Angle: (Vector2, Vector2) -> (number),
Cross: (Vector2, Vector2) -> (Vector2),
Distance: (Vector2, Vector2) -> (number),
Dot: (Vector2, Vector2) -> (number),
Lerp: (Vector2, Vector2, number) -> (Vector2),
Max: (Vector2, Vector2) -> (Vector2),
Min: (Vector2, Vector2) -> (Vector2),
MoveTowards: (Vector2, Vector2, number) -> (Vector2),
Normalize: (Vector2) -> (Vector2),
Project: (Vector2, Vector2) -> (Vector2),
Reflect: (Vector2, Vector2) -> (Vector2),
Slerp: (Vector2, Vector2, number) -> (Vector2),
}


declare class Color
	R : number
	G : number
	B : number
	A : number
end
declare Color: {
    New: (() -> (Color)) & ((number) -> (Color)) & ((number, number, number) -> (Color)) & ((number, number, number, number) -> (Color)),
__add: (Color, Color) -> (Color),
__sub: (Color, Color) -> (Color),
__mul: (Color, any) -> (any),
__eq: (Color, Color) -> (boolean),
__tostring: (Color) -> (string),
Random: () -> (Color),
FromRGB: (number, number, number, number?) -> (Color),
FromHex: (string) -> (Color),
ToHex: (Color) -> (string),
FromHSV: (number, number, number, number?) -> (Color),
Lerp: (Color, Color, number) -> (Color),
}


declare class Quaternion
	X : number
	Y : number
	Z : number
	W : number
end
declare Quaternion: {
	Identity : Quaternion,
    New: (() -> (Quaternion)) & ((number, number, number, number) -> (Quaternion)),
__add: (Quaternion, Quaternion) -> (Quaternion),
__sub: (any, any) -> (Quaternion),
__mul: (Quaternion, any) -> (any),
__eq: (Quaternion, Quaternion) -> (boolean),
__tostring: (Quaternion) -> (string),
Angle: (Quaternion, Quaternion) -> (Quaternion),
AngleAxis: (number, Vector3) -> (Quaternion),
Dot: (Quaternion, Quaternion) -> (Quaternion),
Euler: (number, number, number) -> (Quaternion),
Euler: (Vector3) -> (Quaternion),
ToEuler: (Quaternion) -> (Vector3),
FromToRotation: (Vector3, Vector3) -> (Quaternion),
Inverse: (Quaternion) -> (Quaternion),
Lerp: (Quaternion, Quaternion, number) -> (Quaternion),
LerpUnclamped: (Quaternion, Quaternion, number) -> (Quaternion),
LookRotation: (Vector3) -> (Quaternion),
LookRotation: (Vector3, Vector3) -> (Quaternion),
Normalize: (Quaternion) -> (Quaternion),
RotateTowards: (Quaternion, Quaternion, number) -> (Quaternion),
Slerp: (Quaternion, Quaternion, number) -> (Quaternion),
SlerpUnclamped: (Quaternion, Quaternion, number) -> (Quaternion),
}


declare class CreatorInterface
	ToolMode : CreatorToolMode
	TargetPartColor : Color
	TargetPartMaterial : PartMaterial
	MoveSnapEnabled : boolean
	MoveSnapping : number
	UserMoveSnapping : number
	RotateSnapEnabled : boolean
	RotateSnapping : number
	UserRotateSnapping : number
end
