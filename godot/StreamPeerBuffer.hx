// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Data buffer stream peer that uses a byte array as the stream. This object can be used to handle binary data from network sessions. To handle binary data stored in files, `godot.File` can be used directly.

A `godot.StreamPeerBuffer` object keeps an internal cursor which is the offset in bytes to the start of the buffer. Get and put operations are performed at the cursor position and will move the cursor accordingly.
**/
@:libType
@:csNative
@:native("Godot.StreamPeerBuffer")
@:autoBuild(godot.Godot.buildUserClass())
extern class StreamPeerBuffer extends godot.StreamPeer {
	/**		
		The underlying data buffer. Setting this value resets the cursor.
	**/
	@:native("DataArray")
	public var dataArray:cs.NativeArray<cs.types.UInt8>;

	@:native("new")
	public function new():Void;

	/**		
		Moves the cursor to the specified position. `position` must be a valid index of `godot.StreamPeerBuffer.dataArray`.
	**/
	@:native("Seek")
	public function seek(position:Int):Void;

	/**		
		Returns the size of `godot.StreamPeerBuffer.dataArray`.
	**/
	@:native("GetSize")
	public function getSize():Int;

	/**		
		Returns the current cursor position.
	**/
	@:native("GetPosition")
	public function getPosition():Int;

	/**		
		Resizes the `godot.StreamPeerBuffer.dataArray`. This doesn't update the cursor.
	**/
	@:native("Resize")
	public function resize(size:Int):Void;

	@:native("SetDataArray")
	public function setDataArray(data:HaxeArray<cs.types.UInt8>):Void;

	public extern inline function getDataArray():std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetDataArray()", this));
	}

	/**		
		Clears the `godot.StreamPeerBuffer.dataArray` and resets the cursor.
	**/
	@:native("Clear")
	public function clear():Void;

	/**		
		Returns a new `godot.StreamPeerBuffer` with the same `godot.StreamPeerBuffer.dataArray` content.
	**/
	@:native("Duplicate")
	public function duplicate():godot.StreamPeerBuffer;
}
