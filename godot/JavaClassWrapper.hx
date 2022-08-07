// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.JavaClassWrapper")
@:autoBuild(godot.Godot.buildUserClass())
extern class JavaClassWrapper {
	@:native("Singleton")
	public static var SINGLETON(default, never):godot.Object;

	@:native("Wrap")
	public static function wrap(name:std.String):godot.JavaClass;
}
