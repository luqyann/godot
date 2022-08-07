// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Translated to `uniform mat4` in the shader language.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeTransformUniform")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeTransformUniform extends godot.VisualShaderNodeUniform {
	/**		
		A default value to be assigned within the shader.
	**/
	@:native("DefaultValue")
	public var defaultValue:godot.Transform;

	/**		
		Enables usage of the `godot.VisualShaderNodeTransformUniform.defaultValue`.
	**/
	@:native("DefaultValueEnabled")
	public var defaultValueEnabled:Bool;

	@:native("new")
	public function new():Void;

	@:native("SetDefaultValueEnabled")
	public function setDefaultValueEnabled(enabled:Bool):Void;

	@:native("IsDefaultValueEnabled")
	public function isDefaultValueEnabled():Bool;

	@:native("SetDefaultValue")
	public function setDefaultValue(value:godot.Transform):Void;

	@:native("GetDefaultValue")
	public function getDefaultValue():godot.Transform;
}
