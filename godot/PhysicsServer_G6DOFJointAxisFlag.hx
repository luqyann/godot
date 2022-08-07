// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.PhysicsServer.G6DOFJointAxisFlag")
@:csNative
extern enum PhysicsServer_G6DOFJointAxisFlag {
	/**		
		If set, linear motion is possible within the given limits.
	**/
	LinearLimit;

	/**		
		If set, rotational motion is possible.
	**/
	AngularLimit;

	/**		
		If set, there is a rotational motor across these axes.
	**/
	Motor;

	/**		
		If set, there is a linear motor on this axis that targets a specific velocity.
	**/
	LinearMotor;
}
