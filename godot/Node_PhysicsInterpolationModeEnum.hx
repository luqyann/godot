// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Node.PhysicsInterpolationModeEnum")
@:csNative
extern enum Node_PhysicsInterpolationModeEnum {
	/**		
		Inherits physics interpolation mode from the node's parent. For the root node, it is equivalent to `godot.Node_PhysicsInterpolationModeEnum.on`. Default.
	**/
	Inherit;

	/**		
		Turn off physics interpolation in this node and children set to `godot.Node_PhysicsInterpolationModeEnum.inherit`.
	**/
	Off;

	/**		
		Turn on physics interpolation in this node and children set to `godot.Node_PhysicsInterpolationModeEnum.inherit`.
	**/
	On;
}
