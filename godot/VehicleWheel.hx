// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This node needs to be used as a child node of `godot.VehicleBody` and simulates the behavior of one of its wheels. This node also acts as a collider to detect if the wheel is touching a surface.

Note: This class has known issues and isn't designed to provide realistic 3D vehicle physics. If you want advanced vehicle physics, you will probably have to write your own physics integration using another `godot.PhysicsBody` class.
**/
@:libType
@:csNative
@:native("Godot.VehicleWheel")
@:autoBuild(godot.Godot.buildUserClass())
extern class VehicleWheel extends godot.Spatial {
	/**		
		The damping applied to the spring when relaxing. This value should be between 0.0 (no damping) and 1.0. This value should always be slightly higher than the `godot.VehicleWheel.dampingCompression` property. For a `godot.VehicleWheel.dampingCompression` value of 0.3, try a relaxation value of 0.5.
	**/
	@:native("DampingRelaxation")
	public var dampingRelaxation:Single;

	/**		
		The damping applied to the spring when the spring is being compressed. This value should be between 0.0 (no damping) and 1.0. A value of 0.0 means the car will keep bouncing as the spring keeps its energy. A good value for this is around 0.3 for a normal car, 0.5 for a race car.
	**/
	@:native("DampingCompression")
	public var dampingCompression:Single;

	/**		
		The maximum force the spring can resist. This value should be higher than a quarter of the `godot.RigidBody.mass` of the `godot.VehicleBody` or the spring will not carry the weight of the vehicle. Good results are often obtained by a value that is about 3× to 4× this number.
	**/
	@:native("SuspensionMaxForce")
	public var suspensionMaxForce:Single;

	/**		
		This value defines the stiffness of the suspension. Use a value lower than 50 for an off-road car, a value between 50 and 100 for a race car and try something around 200 for something like a Formula 1 car.
	**/
	@:native("SuspensionStiffness")
	public var suspensionStiffness:Single;

	/**		
		This is the distance the suspension can travel. As Godot units are equivalent to meters, keep this setting relatively low. Try a value between 0.1 and 0.3 depending on the type of car.
	**/
	@:native("SuspensionTravel")
	public var suspensionTravel:Single;

	/**		
		This determines how much grip this wheel has. It is combined with the friction setting of the surface the wheel is in contact with. 0.0 means no grip, 1.0 is normal grip. For a drift car setup, try setting the grip of the rear wheels slightly lower than the front wheels, or use a lower value to simulate tire wear.
		
		It's best to set this to 1.0 when starting out.
	**/
	@:native("WheelFrictionSlip")
	public var wheelFrictionSlip:Single;

	/**		
		This is the distance in meters the wheel is lowered from its origin point. Don't set this to 0.0 and move the wheel into position, instead move the origin point of your wheel (the gizmo in Godot) to the position the wheel will take when bottoming out, then use the rest length to move the wheel down to the position it should be in when the car is in rest.
	**/
	@:native("WheelRestLength")
	public var wheelRestLength:Single;

	/**		
		The radius of the wheel in meters.
	**/
	@:native("WheelRadius")
	public var wheelRadius:Single;

	/**		
		This value affects the roll of your vehicle. If set to 1.0 for all wheels, your vehicle will be prone to rolling over, while a value of 0.0 will resist body roll.
	**/
	@:native("WheelRollInfluence")
	public var wheelRollInfluence:Single;

	/**		
		If `true`, this wheel will be turned when the car steers. This value is used in conjunction with `godot.VehicleBody.steering` and ignored if you are using the per-wheel `godot.VehicleWheel.steering` value instead.
	**/
	@:native("UseAsSteering")
	public var useAsSteering:Bool;

	/**		
		If `true`, this wheel transfers engine force to the ground to propel the vehicle forward. This value is used in conjunction with `godot.VehicleBody.engineForce` and ignored if you are using the per-wheel `godot.VehicleWheel.engineForce` value instead.
	**/
	@:native("UseAsTraction")
	public var useAsTraction:Bool;

	/**		
		The steering angle for the wheel. Setting this to a non-zero value will result in the vehicle turning when it's moving.
	**/
	@:native("Steering")
	public var steering:Single;

	/**		
		Slows down the wheel by applying a braking force. The wheel is only slowed down if it is in contact with a surface. The force you need to apply to adequately slow down your vehicle depends on the `godot.RigidBody.mass` of the vehicle. For a vehicle with a mass set to 1000, try a value in the 25 - 30 range for hard braking.
	**/
	@:native("Brake")
	public var brake:Single;

	/**		
		Accelerates the wheel by applying an engine force. The wheel is only sped up if it is in contact with a surface. The `godot.RigidBody.mass` of the vehicle has an effect on the acceleration of the vehicle. For a vehicle with a mass set to 1000, try a value in the 25 - 50 range for acceleration.
		
		Note: The simulation does not take the effect of gears into account, you will need to add logic for this if you wish to simulate gears.
		
		A negative value will result in the wheel reversing.
	**/
	@:native("EngineForce")
	public var engineForce:Single;

	@:native("new")
	public function new():Void;

	@:native("SetRadius")
	public function setRadius(length:Single):Void;

	@:native("GetRadius")
	public function getRadius():Single;

	@:native("SetSuspensionRestLength")
	public function setSuspensionRestLength(length:Single):Void;

	@:native("GetSuspensionRestLength")
	public function getSuspensionRestLength():Single;

	@:native("SetSuspensionTravel")
	public function setSuspensionTravel(length:Single):Void;

	@:native("GetSuspensionTravel")
	public function getSuspensionTravel():Single;

	@:native("SetSuspensionStiffness")
	public function setSuspensionStiffness(length:Single):Void;

	@:native("GetSuspensionStiffness")
	public function getSuspensionStiffness():Single;

	@:native("SetSuspensionMaxForce")
	public function setSuspensionMaxForce(length:Single):Void;

	@:native("GetSuspensionMaxForce")
	public function getSuspensionMaxForce():Single;

	@:native("SetDampingCompression")
	public function setDampingCompression(length:Single):Void;

	@:native("GetDampingCompression")
	public function getDampingCompression():Single;

	@:native("SetDampingRelaxation")
	public function setDampingRelaxation(length:Single):Void;

	@:native("GetDampingRelaxation")
	public function getDampingRelaxation():Single;

	@:native("SetUseAsTraction")
	public function setUseAsTraction(enable:Bool):Void;

	@:native("IsUsedAsTraction")
	public function isUsedAsTraction():Bool;

	@:native("SetUseAsSteering")
	public function setUseAsSteering(enable:Bool):Void;

	@:native("IsUsedAsSteering")
	public function isUsedAsSteering():Bool;

	@:native("SetFrictionSlip")
	public function setFrictionSlip(length:Single):Void;

	@:native("GetFrictionSlip")
	public function getFrictionSlip():Single;

	/**		
		Returns `true` if this wheel is in contact with a surface.
	**/
	@:native("IsInContact")
	public function isInContact():Bool;

	/**		
		Returns the contacting body node if valid in the tree, as `godot.Spatial`. At the moment, `godot.GridMap` is not supported so the node will be always of type `godot.PhysicsBody`.
		
		Returns `null` if the wheel is not in contact with a surface, or the contact body is not a `godot.PhysicsBody`.
	**/
	@:native("GetContactBody")
	public function getContactBody():godot.Spatial;

	@:native("SetRollInfluence")
	public function setRollInfluence(rollInfluence:Single):Void;

	@:native("GetRollInfluence")
	public function getRollInfluence():Single;

	/**		
		Returns a value between 0.0 and 1.0 that indicates whether this wheel is skidding. 0.0 is skidding (the wheel has lost grip, e.g. icy terrain), 1.0 means not skidding (the wheel has full grip, e.g. dry asphalt road).
	**/
	@:native("GetSkidinfo")
	public function getSkidinfo():Single;

	/**		
		Returns the rotational speed of the wheel in revolutions per minute.
	**/
	@:native("GetRpm")
	public function getRpm():Single;

	@:native("SetEngineForce")
	public function setEngineForce(engineForce:Single):Void;

	@:native("GetEngineForce")
	public function getEngineForce():Single;

	@:native("SetBrake")
	public function setBrake(brake:Single):Void;

	@:native("GetBrake")
	public function getBrake():Single;

	@:native("SetSteering")
	public function setSteering(steering:Single):Void;

	@:native("GetSteering")
	public function getSteering():Single;
}
