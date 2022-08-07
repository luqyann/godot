// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualShaderNodeScalarUniform.HintEnum")
@:csNative
extern enum VisualShaderNodeScalarUniform_HintEnum {
	/**		
		No hint used.
	**/
	None;

	/**		
		A range hint for scalar value, which limits possible input values between `godot.VisualShaderNodeScalarUniform.min` and `godot.VisualShaderNodeScalarUniform.max`. Translated to `hint_range(min, max)` in shader code.
	**/
	Range;

	/**		
		A range hint for scalar value with step, which limits possible input values between `godot.VisualShaderNodeScalarUniform.min` and `godot.VisualShaderNodeScalarUniform.max`, with a step (increment) of `godot.VisualShaderNodeScalarUniform.step`). Translated to `hint_range(min, max, step)` in shader code.
	**/
	RangeStep;

	/**		
		Represents the size of the `godot.VisualShaderNodeScalarUniform_HintEnum` enum.
	**/
	Max;
}
