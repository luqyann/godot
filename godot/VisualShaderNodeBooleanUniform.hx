// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Translated to `uniform bool` in the shader language.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeBooleanUniform")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeBooleanUniform extends godot.VisualShaderNodeUniform {
	/**		
		A default value to be assigned within the shader.
	**/
	@:native("DefaultValue")
	public var defaultValue:Bool;

	/**		
		Enables usage of the `godot.VisualShaderNodeBooleanUniform.defaultValue`.
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
	public function setDefaultValue(value:Bool):Void;

	@:native("GetDefaultValue")
	public function getDefaultValue():Bool;
}
