// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.VisualShaderNodeScalarUniform")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeScalarUniform extends godot.VisualShaderNodeUniform {
	/**		
		A default value to be assigned within the shader.
	**/
	@:native("DefaultValue")
	public var defaultValue:Single;

	/**		
		Enables usage of the `godot.VisualShaderNodeScalarUniform.defaultValue`.
	**/
	@:native("DefaultValueEnabled")
	public var defaultValueEnabled:Bool;

	/**		
		Step (increment) value for the range hint with step. Used if `godot.VisualShaderNodeScalarUniform.hint` is set to `godot.VisualShaderNodeScalarUniform_HintEnum.rangeStep`.
	**/
	@:native("Step")
	public var step:Single;

	/**		
		Minimum value for range hints. Used if `godot.VisualShaderNodeScalarUniform.hint` is set to `godot.VisualShaderNodeScalarUniform_HintEnum.range` or `godot.VisualShaderNodeScalarUniform_HintEnum.rangeStep`.
	**/
	@:native("Max")
	public var max:Single;

	/**		
		Maximum value for range hints. Used if `godot.VisualShaderNodeScalarUniform.hint` is set to `godot.VisualShaderNodeScalarUniform_HintEnum.range` or `godot.VisualShaderNodeScalarUniform_HintEnum.rangeStep`.
	**/
	@:native("Min")
	public var min:Single;

	/**		
		A hint applied to the uniform, which controls the values it can take when set through the inspector.
	**/
	@:native("Hint")
	public var hint:godot.VisualShaderNodeScalarUniform_HintEnum;

	@:native("new")
	public function new():Void;

	@:native("SetHint")
	public function setHint(hint:godot.VisualShaderNodeScalarUniform_HintEnum):Void;

	@:native("GetHint")
	public function getHint():godot.VisualShaderNodeScalarUniform_HintEnum;

	@:native("SetMin")
	public function setMin(value:Single):Void;

	@:native("GetMin")
	public function getMin():Single;

	@:native("SetMax")
	public function setMax(value:Single):Void;

	@:native("GetMax")
	public function getMax():Single;

	@:native("SetStep")
	public function setStep(value:Single):Void;

	@:native("GetStep")
	public function getStep():Single;

	@:native("SetDefaultValueEnabled")
	public function setDefaultValueEnabled(enabled:Bool):Void;

	@:native("IsDefaultValueEnabled")
	public function isDefaultValueEnabled():Bool;

	@:native("SetDefaultValue")
	public function setDefaultValue(value:Single):Void;

	@:native("GetDefaultValue")
	public function getDefaultValue():Single;
}
