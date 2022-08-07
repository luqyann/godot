// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.EditorResourceConversionPlugin")
@:autoBuild(godot.Godot.buildUserClass())
extern class EditorResourceConversionPlugin extends godot.Reference {
	@:native("new")
	public function new():Void;

	@:native("_Convert")
	public function _Convert(resource:godot.Resource):godot.Resource;

	@:native("_ConvertsTo")
	public function _ConvertsTo():std.String;
}
