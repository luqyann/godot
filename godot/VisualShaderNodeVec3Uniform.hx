// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Translated to `uniform vec3` in the shader language.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeVec3Uniform")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeVec3Uniform extends godot.VisualShaderNodeUniform {
	/**		
		A default value to be assigned within the shader.
	**/
	@:native("DefaultValue")
	public var defaultValue:godot.Vector3;

	/**		
		Enables usage of the `godot.VisualShaderNodeVec3Uniform.defaultValue`.
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
	public function setDefaultValue(value:godot.Vector3):Void;

	@:native("GetDefaultValue")
	public function getDefaultValue():godot.Vector3;
}
