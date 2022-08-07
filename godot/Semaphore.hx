// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A synchronization semaphore which can be used to synchronize multiple `godot.Thread`s. Initialized to zero on creation. Be careful to avoid deadlocks. For a binary version, see `godot.Mutex`.
**/
@:libType
@:csNative
@:native("Godot.Semaphore")
@:autoBuild(godot.Godot.buildUserClass())
extern class Semaphore extends godot.Reference {
	@:native("new")
	public function new():Void;

	/**		
		Waits for the `godot.Semaphore`, if its value is zero, blocks until non-zero.
		
		Note: This method internals' can't possibly fail, but an error code is returned for backwards compatibility, which will always be `OK`.
	**/
	@:native("Wait")
	public function wait():godot.Error;

	/**		
		Lowers the `godot.Semaphore`, allowing one more thread in.
		
		Note: This method internals' can't possibly fail, but an error code is returned for backwards compatibility, which will always be `OK`.
	**/
	@:native("Post")
	public function post():godot.Error;

	/**		
		Like `godot.Semaphore.wait`, but won't block, so if the value is zero, fails immediately and returns `ERR_BUSY`. If non-zero, it returns `OK` to report success.
	**/
	@:native("TryWait")
	public function tryWait():godot.Error;
}
