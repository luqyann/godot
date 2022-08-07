// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.CallbackTweener` is used to call a method in a tweening sequence. See `godot.SceneTreeTween.tweenCallback` for more usage information.

Note: `godot.SceneTreeTween.tweenCallback` is the only correct way to create `godot.CallbackTweener`. Any `godot.CallbackTweener` created manually will not function correctly.
**/
@:libType
@:csNative
@:native("Godot.CallbackTweener")
@:autoBuild(godot.Godot.buildUserClass())
extern class CallbackTweener extends godot.Tweener {
	@:native("new")
	public function new():Void;

	/**		
		Makes the callback call delayed by given time in seconds. Example:
		
		```
		
		var tween = get_tree().create_tween()
		tween.tween_callback(queue_free).set_delay(2) #this will call queue_free() after 2 seconds
		
		```
	**/
	@:native("SetDelay")
	public function setDelay(delay:Single):godot.CallbackTweener;
}
