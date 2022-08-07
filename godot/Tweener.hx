// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Tweeners are objects that perform a specific animating task, e.g. interpolating a property or calling a method at a given time. A `godot.Tweener` can't be created manually, you need to use a dedicated method from `godot.SceneTreeTween`.
**/
@:libType
@:csNative
@:native("Godot.Tweener")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class Tweener extends godot.Reference {
	/**
		`finished` signal.
		
		Emitted when the `Tweener` has just finished its job.
	**/
	public var onFinished(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onFinished():Signal<Void->Void> {
		return new Signal(this, "finished", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}
}
