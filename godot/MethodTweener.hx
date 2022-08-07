// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.MethodTweener` is similar to a combination of `godot.CallbackTweener` and `godot.PropertyTweener`. It calls a method providing an interpolated value as a parameter. See `godot.SceneTreeTween.tweenMethod` for more usage information.

Note: `godot.SceneTreeTween.tweenMethod` is the only correct way to create `godot.MethodTweener`. Any `godot.MethodTweener` created manually will not function correctly.
**/
@:libType
@:csNative
@:native("Godot.MethodTweener")
@:autoBuild(godot.Godot.buildUserClass())
extern class MethodTweener extends godot.Tweener {
	@:native("new")
	public function new():Void;

	/**		
		Sets the time in seconds after which the `godot.MethodTweener` will start interpolating. By default there's no delay.
	**/
	@:native("SetDelay")
	public function setDelay(delay:Single):godot.MethodTweener;

	/**		
		Sets the type of used transition from `godot.Tween_TransitionType`. If not set, the default transition is used from the `godot.SceneTreeTween` that contains this Tweener.
	**/
	@:native("SetTrans")
	public function setTrans(trans:godot.Tween_TransitionType):godot.MethodTweener;

	/**		
		Sets the type of used easing from `godot.Tween_EaseType`. If not set, the default easing is used from the `godot.SceneTreeTween` that contains this Tweener.
	**/
	@:native("SetEase")
	public function setEase(ease:godot.Tween_EaseType):godot.MethodTweener;
}
