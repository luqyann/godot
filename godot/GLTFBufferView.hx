// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Note: This class is only compiled in editor builds. Run-time glTF loading and saving is not available in exported projects. References to `godot.GLTFBufferView` within a script will cause an error in an exported project.
**/
@:libType
@:csNative
@:native("Godot.GLTFBufferView")
@:autoBuild(godot.Godot.buildUserClass())
extern class GLTFBufferView extends godot.Resource {
	@:native("Indices")
	public var indices:Bool;

	@:native("ByteStride")
	public var byteStride:Int;

	@:native("ByteLength")
	public var byteLength:Int;

	@:native("ByteOffset")
	public var byteOffset:Int;

	@:native("Buffer")
	public var buffer:Int;

	@:native("new")
	public function new():Void;

	@:native("GetBuffer")
	public function getBuffer():Int;

	@:native("SetBuffer")
	public function setBuffer(buffer:Int):Void;

	@:native("GetByteOffset")
	public function getByteOffset():Int;

	@:native("SetByteOffset")
	public function setByteOffset(byteOffset:Int):Void;

	@:native("GetByteLength")
	public function getByteLength():Int;

	@:native("SetByteLength")
	public function setByteLength(byteLength:Int):Void;

	@:native("GetByteStride")
	public function getByteStride():Int;

	@:native("SetByteStride")
	public function setByteStride(byteStride:Int):Void;

	@:native("GetIndices")
	public function getIndices():Bool;

	@:native("SetIndices")
	public function setIndices(indices:Bool):Void;
}
