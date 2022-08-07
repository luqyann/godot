// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.PropertyTweener` is used to interpolate a property in an object. See `godot.SceneTreeTween.tweenProperty` for more usage information.

Note: `godot.SceneTreeTween.tweenProperty` is the only correct way to create `godot.PropertyTweener`. Any `godot.PropertyTweener` created manually will not function correctly.
**/
@:libType
@:csNative
@:native("Godot.PropertyTweener")
@:autoBuild(godot.Godot.buildUserClass())
extern class PropertyTweener extends godot.Tweener {
	@:native("new")
	public function new():Void;

	/**		
		Sets a custom initial value to the `godot.PropertyTweener`. Example:
		
		```
		
		var tween = get_tree().create_tween()
		tween.tween_property(self, "position", Vector2(200, 100), 1).from(Vector2(100, 100) #this will move the node from position (100, 100) to (200, 100)
		
		```
	**/
	@:native("From")
	public function from(value:Dynamic):godot.PropertyTweener;

	/**		
		Makes the `godot.PropertyTweener` use the current property value (i.e. at the time of creating this `godot.PropertyTweener`) as a starting point. This is equivalent of using `godot.PropertyTweener.from` with the current value. These two calls will do the same:
		
		```
		
		tween.tween_property(self, "position", Vector2(200, 100), 1).from(position)
		tween.tween_property(self, "position", Vector2(200, 100), 1).from_current()
		
		```
	**/
	@:native("FromCurrent")
	public function fromCurrent():godot.PropertyTweener;

	/**		
		When called, the final value will be used as a relative value instead. Example:
		
		```
		
		var tween = get_tree().create_tween()
		tween.tween_property(self, "position", Vector2.RIGHT * 100, 1).as_relative() #the node will move by 100 pixels to the right
		
		```
	**/
	@:native("AsRelative")
	public function asRelative():godot.PropertyTweener;

	/**		
		Sets the type of used transition from `godot.Tween_TransitionType`. If not set, the default transition is used from the `godot.SceneTreeTween` that contains this Tweener.
	**/
	@:native("SetTrans")
	public function setTrans(trans:godot.Tween_TransitionType):godot.PropertyTweener;

	/**		
		Sets the type of used easing from `godot.Tween_EaseType`. If not set, the default easing is used from the `godot.SceneTreeTween` that contains this Tweener.
	**/
	@:native("SetEase")
	public function setEase(ease:godot.Tween_EaseType):godot.PropertyTweener;

	/**		
		Sets the time in seconds after which the `godot.PropertyTweener` will start interpolating. By default there's no delay.
	**/
	@:native("SetDelay")
	public function setDelay(delay:Single):godot.PropertyTweener;
}
