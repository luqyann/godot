// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.KinematicBody2D.MovingPlatformApplyVelocityOnLeaveEnum")
@:csNative
extern enum KinematicBody2D_MovingPlatformApplyVelocityOnLeaveEnum {
	/**		
		Add the last platform velocity when you leave a moving platform.
	**/
	Always;

	/**		
		Add the last platform velocity when you leave a moving platform, but any downward motion is ignored. It's useful to keep full jump height even when the platform is moving down.
	**/
	UpwardOnly;

	/**		
		Do nothing when leaving a platform.
	**/
	Never;
}
