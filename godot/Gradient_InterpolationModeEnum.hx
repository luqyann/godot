// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Gradient.InterpolationModeEnum")
@:csNative
extern enum Gradient_InterpolationModeEnum {
	/**		
		Linear interpolation.
	**/
	Linear;

	/**		
		Constant interpolation, color changes abruptly at each point and stays uniform between. This might cause visible aliasing when used for a gradient texture in some cases.
	**/
	Constant;

	/**		
		Cubic interpolation.
	**/
	Cubic;
}
