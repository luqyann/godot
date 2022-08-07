// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.SceneTreeTween` is a tween managed by the scene tree. As opposed to `godot.Tween`, it does not require the instantiation of a node.

`godot.SceneTreeTween`s are more light-weight than `godot.AnimationPlayer`, so they are very much suited for simple animations or general tasks that don't require visual tweaking provided by the editor. They can be used in a fire-and-forget manner for some logic that normally would be done by code. You can e.g. make something shoot periodically by using a looped `godot.CallbackTweener` with a delay.

A `godot.SceneTreeTween` can be created by using either `godot.SceneTree.createTween` or `godot.Node.createTween`. `godot.SceneTreeTween`s created manually (i.e. by using `Tween.new()`) are invalid. They can't be used for tweening values, but you can do manual interpolation with `godot.SceneTreeTween.interpolateValue`.

A tween animation is created by adding `godot.Tweener`s to the `godot.SceneTreeTween` object, using `godot.SceneTreeTween.tweenProperty`, `godot.SceneTreeTween.tweenInterval`, `godot.SceneTreeTween.tweenCallback` or `godot.SceneTreeTween.tweenMethod`:

```

var tween = get_tree().create_tween()
tween.tween_property($Sprite, "modulate", Color.red, 1)
tween.tween_property($Sprite, "scale", Vector2(), 1)
tween.tween_callback($Sprite, "queue_free")

```

This sequence will make the `$Sprite` node turn red, then shrink, before finally calling `godot.Node.queueFree` to free the sprite. `godot.Tweener`s are executed one after another by default. This behavior can be changed using `godot.SceneTreeTween.parallel` and `godot.SceneTreeTween.setParallel`.

When a `godot.Tweener` is created with one of the `tween_*` methods, a chained method call can be used to tweak the properties of this `godot.Tweener`. For example, if you want to set a different transition type in the above example, you can use `godot.SceneTreeTween.setTrans`:

```

var tween = get_tree().create_tween()
tween.tween_property($Sprite, "modulate", Color.red, 1).set_trans(Tween.TRANS_SINE)
tween.tween_property($Sprite, "scale", Vector2(), 1).set_trans(Tween.TRANS_BOUNCE)
tween.tween_callback($Sprite, "queue_free")

```

Most of the `godot.SceneTreeTween` methods can be chained this way too. In the following example the `godot.SceneTreeTween` is bound to the running script's node and a default transition is set for its `godot.Tweener`s:

```

var tween = get_tree().create_tween().bind_node(self).set_trans(Tween.TRANS_ELASTIC)
tween.tween_property($Sprite, "modulate", Color.red, 1)
tween.tween_property($Sprite, "scale", Vector2(), 1)
tween.tween_callback($Sprite, "queue_free")

```

Another interesting use for `godot.SceneTreeTween`s is animating arbitrary sets of objects:

```

var tween = create_tween()
for sprite in get_children():
tween.tween_property(sprite, "position", Vector2(0, 0), 1)

```

In the example above, all children of a node are moved one after another to position (0, 0).

Some `godot.Tweener`s use transitions and eases. The first accepts a `godot.Tween_TransitionType` constant, and refers to the way the timing of the animation is handled (see [https://easings.net/](easings.net) for some examples). The second accepts an `godot.Tween_EaseType` constant, and controls where the `trans_type` is applied to the interpolation (in the beginning, the end, or both). If you don't know which transition and easing to pick, you can try different `godot.Tween_TransitionType` constants with `godot.Tween_EaseType.inOut`, and use the one that looks best.

[https://raw.githubusercontent.com/godotengine/godot-docs/master/img/tween_cheatsheet.png](Tween easing and transition types cheatsheet)

Note: All `godot.SceneTreeTween`s will automatically start by default. To prevent a `godot.SceneTreeTween` from autostarting, you can call `godot.SceneTreeTween.stop` immediately after it is created.
**/
@:libType
@:csNative
@:native("Godot.SceneTreeTween")
@:autoBuild(godot.Godot.buildUserClass())
extern class SceneTreeTween extends godot.Reference {
	/**
		`finished` signal.
		
		Emitted when the `SceneTreeTween` has finished all tweening. Never emitted when the `SceneTreeTween` is set to infinite looping (see `setLoops`).
		`b`Note:`/b` The `SceneTreeTween` is removed (invalidated) in the next processing frame after this signal is emitted. Calling `stop` inside the signal callback will prevent the `SceneTreeTween` from being removed.
	**/
	public var onFinished(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onFinished():Signal<Void->Void> {
		return new Signal(this, "finished", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`loop_finished` signal.
		
		Emitted when a full loop is complete (see `setLoops`), providing the loop index. This signal is not emitted after the final loop, use `onFinished` instead for this case.
	**/
	public var onLoopFinished(get, never):Signal<(loopCount:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onLoopFinished():Signal<(loopCount:Int)->Void> {
		return new Signal(this, "loop_finished", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**
		`step_finished` signal.
		
		Emitted when one step of the `SceneTreeTween` is complete, providing the step index. One step is either a single `Tweener` or a group of `Tweener`s running in parallel.
	**/
	public var onStepFinished(get, never):Signal<(idx:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onStepFinished():Signal<(idx:Int)->Void> {
		return new Signal(this, "step_finished", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	@:native("new")
	public function new():Void;

	/**		
		Creates and appends a `godot.PropertyTweener`. This method tweens a `property` of an `object` between an initial value and `final_val` in a span of time equal to `duration`, in seconds. The initial value by default is the property's value at the time the tweening of the `godot.PropertyTweener` starts. For example:
		
		```
		
		var tween = create_tween()
		tween.tween_property($Sprite, "position", Vector2(100, 200), 1)
		tween.tween_property($Sprite, "position", Vector2(200, 300), 1)
		
		```
		
		will move the sprite to position (100, 200) and then to (200, 300). If you use `godot.PropertyTweener.from` or `godot.PropertyTweener.fromCurrent`, the starting position will be overwritten by the given value instead. See other methods in `godot.PropertyTweener` to see how the tweening can be tweaked further.
		
		Note: You can find the correct property name by hovering over the property in the Inspector. You can also provide the components of a property directly by using `"property:component"` (eg. `position:x`), where it would only apply to that particular component.
		
		Example: moving object twice from the same position, with different transition types.
		
		```
		
		var tween = create_tween()
		tween.tween_property($Sprite, "position", Vector2.RIGHT * 300, 1).as_relative().set_trans(Tween.TRANS_SINE)
		tween.tween_property($Sprite, "position", Vector2.RIGHT * 300, 1).as_relative().from_current().set_trans(Tween.TRANS_EXPO)
		
		```
	**/
	@:native("TweenProperty")
	public function tweenProperty(object:godot.Object, property:godot.NodePath, finalVal:Dynamic, duration:Single):godot.PropertyTweener;

	/**		
		Creates and appends an `godot.IntervalTweener`. This method can be used to create delays in the tween animation, as an alternative to using the delay in other `godot.Tweener`s, or when there's no animation (in which case the `godot.SceneTreeTween` acts as a timer). `time` is the length of the interval, in seconds.
		
		Example: creating an interval in code execution.
		
		```
		
		# ... some code
		yield(create_tween().tween_interval(2), "finished")
		# ... more code
		
		```
		
		Example: creating an object that moves back and forth and jumps every few seconds.
		
		```
		
		var tween = create_tween().set_loops()
		tween.tween_property($Sprite, "position:x", 200.0, 1).as_relative()
		tween.tween_callback(self, "jump")
		tween.tween_interval(2)
		tween.tween_property($Sprite, "position:x", -200.0, 1).as_relative()
		tween.tween_callback(self, "jump")
		tween.tween_interval(2)
		
		```
	**/
	@:native("TweenInterval")
	public function tweenInterval(time:Single):godot.IntervalTweener;

	#if doc_gen
	/**		
		Creates and appends a `godot.CallbackTweener`. This method can be used to call an arbitrary method in any object. Use `binds` to bind additional arguments for the call.
		
		Example: object that keeps shooting every 1 second.
		
		```
		
		var tween = get_tree().create_tween().set_loops()
		tween.tween_callback(self, "shoot").set_delay(1)
		
		```
		
		Example: turning a sprite red and then blue, with 2 second delay.
		
		```
		
		var tween = get_tree().create_tween()
		tween.tween_callback($Sprite, "set_modulate", [Color.red]).set_delay(2)
		tween.tween_callback($Sprite, "set_modulate", [Color.blue]).set_delay(2)
		
		```
		
		@param binds If the parameter is null, then the default value is new Godot.Collections.Array { }
	**/
	@:native("TweenCallback")
	public function tweenCallback(object:godot.Object, method:std.String, ?binds:godot.collections.Array):godot.CallbackTweener;
	#else
	/**		
		Creates and appends a `godot.CallbackTweener`. This method can be used to call an arbitrary method in any object. Use `binds` to bind additional arguments for the call.
		
		Example: object that keeps shooting every 1 second.
		
		```
		
		var tween = get_tree().create_tween().set_loops()
		tween.tween_callback(self, "shoot").set_delay(1)
		
		```
		
		Example: turning a sprite red and then blue, with 2 second delay.
		
		```
		
		var tween = get_tree().create_tween()
		tween.tween_callback($Sprite, "set_modulate", [Color.red]).set_delay(2)
		tween.tween_callback($Sprite, "set_modulate", [Color.blue]).set_delay(2)
		
		```
		
		@param binds If the parameter is null, then the default value is new Godot.Collections.Array { }
	**/
	@:native("TweenCallback")
	public overload function tweenCallback(object:godot.Object, method:std.String):godot.CallbackTweener;

	/**		
		Creates and appends a `godot.CallbackTweener`. This method can be used to call an arbitrary method in any object. Use `binds` to bind additional arguments for the call.
		
		Example: object that keeps shooting every 1 second.
		
		```
		
		var tween = get_tree().create_tween().set_loops()
		tween.tween_callback(self, "shoot").set_delay(1)
		
		```
		
		Example: turning a sprite red and then blue, with 2 second delay.
		
		```
		
		var tween = get_tree().create_tween()
		tween.tween_callback($Sprite, "set_modulate", [Color.red]).set_delay(2)
		tween.tween_callback($Sprite, "set_modulate", [Color.blue]).set_delay(2)
		
		```
		
		@param binds If the parameter is null, then the default value is new Godot.Collections.Array { }
	**/
	@:native("TweenCallback")
	public overload function tweenCallback(object:godot.Object, method:std.String, binds:godot.collections.Array):godot.CallbackTweener;
	#end

	#if doc_gen
	/**		
		Creates and appends a `godot.MethodTweener`. This method is similar to a combination of `godot.SceneTreeTween.tweenCallback` and `godot.SceneTreeTween.tweenProperty`. It calls a method over time with a tweened value provided as an argument. The value is tweened between `from` and `to` over the time specified by `duration`, in seconds. Use `binds` to bind additional arguments for the call. You can use `godot.MethodTweener.setEase` and `godot.MethodTweener.setTrans` to tweak the easing and transition of the value or `godot.MethodTweener.setDelay` to delay the tweening.
		
		Example: making a 3D object look from one point to another point.
		
		```
		
		var tween = create_tween()
		tween.tween_method(self, "look_at", Vector3(-1, 0, -1), Vector3(1, 0, -1), 1, [Vector3.UP]) # The look_at() method takes up vector as second argument.
		
		```
		
		Example: setting a text of a `godot.Label`, using an intermediate method and after a delay.
		
		```
		
		func _ready():
		var tween = create_tween()
		tween.tween_method(self, "set_label_text", 0, 10, 1).set_delay(1)
		
		func set_label_text(value: int):
		$Label.text = "Counting " + str(value)
		
		```
		
		@param binds If the parameter is null, then the default value is new Godot.Collections.Array { }
	**/
	@:native("TweenMethod")
	public function tweenMethod(object:godot.Object, method:std.String, from:Dynamic, to:Dynamic, duration:Single, ?binds:godot.collections.Array):godot.MethodTweener;
	#else
	/**		
		Creates and appends a `godot.MethodTweener`. This method is similar to a combination of `godot.SceneTreeTween.tweenCallback` and `godot.SceneTreeTween.tweenProperty`. It calls a method over time with a tweened value provided as an argument. The value is tweened between `from` and `to` over the time specified by `duration`, in seconds. Use `binds` to bind additional arguments for the call. You can use `godot.MethodTweener.setEase` and `godot.MethodTweener.setTrans` to tweak the easing and transition of the value or `godot.MethodTweener.setDelay` to delay the tweening.
		
		Example: making a 3D object look from one point to another point.
		
		```
		
		var tween = create_tween()
		tween.tween_method(self, "look_at", Vector3(-1, 0, -1), Vector3(1, 0, -1), 1, [Vector3.UP]) # The look_at() method takes up vector as second argument.
		
		```
		
		Example: setting a text of a `godot.Label`, using an intermediate method and after a delay.
		
		```
		
		func _ready():
		var tween = create_tween()
		tween.tween_method(self, "set_label_text", 0, 10, 1).set_delay(1)
		
		func set_label_text(value: int):
		$Label.text = "Counting " + str(value)
		
		```
		
		@param binds If the parameter is null, then the default value is new Godot.Collections.Array { }
	**/
	@:native("TweenMethod")
	public overload function tweenMethod(object:godot.Object, method:std.String, from:Dynamic, to:Dynamic, duration:Single):godot.MethodTweener;

	/**		
		Creates and appends a `godot.MethodTweener`. This method is similar to a combination of `godot.SceneTreeTween.tweenCallback` and `godot.SceneTreeTween.tweenProperty`. It calls a method over time with a tweened value provided as an argument. The value is tweened between `from` and `to` over the time specified by `duration`, in seconds. Use `binds` to bind additional arguments for the call. You can use `godot.MethodTweener.setEase` and `godot.MethodTweener.setTrans` to tweak the easing and transition of the value or `godot.MethodTweener.setDelay` to delay the tweening.
		
		Example: making a 3D object look from one point to another point.
		
		```
		
		var tween = create_tween()
		tween.tween_method(self, "look_at", Vector3(-1, 0, -1), Vector3(1, 0, -1), 1, [Vector3.UP]) # The look_at() method takes up vector as second argument.
		
		```
		
		Example: setting a text of a `godot.Label`, using an intermediate method and after a delay.
		
		```
		
		func _ready():
		var tween = create_tween()
		tween.tween_method(self, "set_label_text", 0, 10, 1).set_delay(1)
		
		func set_label_text(value: int):
		$Label.text = "Counting " + str(value)
		
		```
		
		@param binds If the parameter is null, then the default value is new Godot.Collections.Array { }
	**/
	@:native("TweenMethod")
	public overload function tweenMethod(object:godot.Object, method:std.String, from:Dynamic, to:Dynamic, duration:Single, binds:godot.collections.Array):godot.MethodTweener;
	#end

	/**		
		Processes the `godot.SceneTreeTween` by the given `delta` value, in seconds. This is mostly useful for manual control when the `godot.SceneTreeTween` is paused. It can also be used to end the `godot.SceneTreeTween` animation immediately, by setting `delta` longer than the whole duration of the `godot.SceneTreeTween` animation.
		
		Returns `true` if the `godot.SceneTreeTween` still has `godot.Tweener`s that haven't finished.
		
		Note: The `godot.SceneTreeTween` will become invalid in the next processing frame after its animation finishes. Calling `godot.SceneTreeTween.stop` after performing `godot.SceneTreeTween.customStep` instead keeps and resets the `godot.SceneTreeTween`.
	**/
	@:native("CustomStep")
	public function customStep(delta:Single):Bool;

	/**		
		Stops the tweening and resets the `godot.SceneTreeTween` to its initial state. This will not remove any appended `godot.Tweener`s.
	**/
	@:native("Stop")
	public function stop():Void;

	/**		
		Pauses the tweening. The animation can be resumed by using `godot.SceneTreeTween.play`.
	**/
	@:native("Pause")
	public function pause():Void;

	/**		
		Resumes a paused or stopped `godot.SceneTreeTween`.
	**/
	@:native("Play")
	public function play():Void;

	/**		
		Aborts all tweening operations and invalidates the `godot.SceneTreeTween`.
	**/
	@:native("Kill")
	public function kill():Void;

	/**		
		Returns the total time in seconds the `godot.SceneTreeTween` has been animating (i.e. the time since it started, not counting pauses etc.). The time is affected by `godot.SceneTreeTween.setSpeedScale`, and `godot.SceneTreeTween.stop` will reset it to `0`.
		
		Note: As it results from accumulating frame deltas, the time returned after the `godot.SceneTreeTween` has finished animating will be slightly greater than the actual `godot.SceneTreeTween` duration.
	**/
	@:native("GetTotalElapsedTime")
	public function getTotalElapsedTime():Single;

	/**		
		Returns whether the `godot.SceneTreeTween` is currently running, i.e. it wasn't paused and it's not finished.
	**/
	@:native("IsRunning")
	public function isRunning():Bool;

	/**		
		Returns whether the `godot.SceneTreeTween` is valid. A valid `godot.SceneTreeTween` is a `godot.SceneTreeTween` contained by the scene tree (i.e. the array from `godot.SceneTree.getProcessedTweens` will contain this `godot.SceneTreeTween`). A `godot.SceneTreeTween` might become invalid when it has finished tweening, is killed, or when created with `SceneTreeTween.new()`. Invalid `godot.SceneTreeTween`s can't have `godot.Tweener`s appended. You can however still use `godot.SceneTreeTween.interpolateValue`.
	**/
	@:native("IsValid")
	public function isValid():Bool;

	/**		
		Binds this `godot.SceneTreeTween` with the given `node`. `godot.SceneTreeTween`s are processed directly by the `godot.SceneTree`, so they run independently of the animated nodes. When you bind a `godot.Node` with the `godot.SceneTreeTween`, the `godot.SceneTreeTween` will halt the animation when the object is not inside tree and the `godot.SceneTreeTween` will be automatically killed when the bound object is freed. Also `godot.SceneTreeTween_TweenPauseMode.bound` will make the pausing behavior dependent on the bound node.
		
		For a shorter way to create and bind a `godot.SceneTreeTween`, you can use `godot.Node.createTween`.
	**/
	@:native("BindNode")
	public function bindNode(node:godot.Node):godot.SceneTreeTween;

	/**		
		Determines whether the `godot.SceneTreeTween` should run during idle frame (see `godot.Node._Process`) or physics frame (see `godot.Node._PhysicsProcess`.
		
		Default value is `godot.Tween_TweenProcessMode.idle`.
	**/
	@:native("SetProcessMode")
	public function setProcessMode(mode:godot.Tween_TweenProcessMode):godot.SceneTreeTween;

	/**		
		Determines the behavior of the `godot.SceneTreeTween` when the `godot.SceneTree` is paused. Check `godot.SceneTreeTween_TweenPauseMode` for options.
		
		Default value is `godot.SceneTreeTween_TweenPauseMode.bound`.
	**/
	@:native("SetPauseMode")
	public function setPauseMode(mode:godot.SceneTreeTween_TweenPauseMode):godot.SceneTreeTween;

	#if doc_gen
	/**		
		If `parallel` is `true`, the `godot.Tweener`s appended after this method will by default run simultaneously, as opposed to sequentially.
	**/
	@:native("SetParallel")
	public function setParallel(?parallel:Bool):godot.SceneTreeTween;
	#else
	/**		
		If `parallel` is `true`, the `godot.Tweener`s appended after this method will by default run simultaneously, as opposed to sequentially.
	**/
	@:native("SetParallel")
	public overload function setParallel():godot.SceneTreeTween;

	/**		
		If `parallel` is `true`, the `godot.Tweener`s appended after this method will by default run simultaneously, as opposed to sequentially.
	**/
	@:native("SetParallel")
	public overload function setParallel(parallel:Bool):godot.SceneTreeTween;
	#end

	#if doc_gen
	/**		
		Sets the number of times the tweening sequence will be repeated, i.e. `set_loops(2)` will run the animation twice.
		
		Calling this method without arguments will make the `godot.SceneTreeTween` run infinitely, until either it is killed with `godot.SceneTreeTween.kill`, the `godot.SceneTreeTween`'s bound node is freed, or all the animated objects have been freed (which makes further animation impossible).
		
		Warning: Make sure to always add some duration/delay when using infinite loops. To prevent the game freezing, 0-duration looped animations (e.g. a single `godot.CallbackTweener` with no delay) are stopped after a small number of loops, which may produce unexpected results. If a `godot.SceneTreeTween`'s lifetime depends on some node, always use `godot.SceneTreeTween.bindNode`.
	**/
	@:native("SetLoops")
	public function setLoops(?loops:Int):godot.SceneTreeTween;
	#else
	/**		
		Sets the number of times the tweening sequence will be repeated, i.e. `set_loops(2)` will run the animation twice.
		
		Calling this method without arguments will make the `godot.SceneTreeTween` run infinitely, until either it is killed with `godot.SceneTreeTween.kill`, the `godot.SceneTreeTween`'s bound node is freed, or all the animated objects have been freed (which makes further animation impossible).
		
		Warning: Make sure to always add some duration/delay when using infinite loops. To prevent the game freezing, 0-duration looped animations (e.g. a single `godot.CallbackTweener` with no delay) are stopped after a small number of loops, which may produce unexpected results. If a `godot.SceneTreeTween`'s lifetime depends on some node, always use `godot.SceneTreeTween.bindNode`.
	**/
	@:native("SetLoops")
	public overload function setLoops():godot.SceneTreeTween;

	/**		
		Sets the number of times the tweening sequence will be repeated, i.e. `set_loops(2)` will run the animation twice.
		
		Calling this method without arguments will make the `godot.SceneTreeTween` run infinitely, until either it is killed with `godot.SceneTreeTween.kill`, the `godot.SceneTreeTween`'s bound node is freed, or all the animated objects have been freed (which makes further animation impossible).
		
		Warning: Make sure to always add some duration/delay when using infinite loops. To prevent the game freezing, 0-duration looped animations (e.g. a single `godot.CallbackTweener` with no delay) are stopped after a small number of loops, which may produce unexpected results. If a `godot.SceneTreeTween`'s lifetime depends on some node, always use `godot.SceneTreeTween.bindNode`.
	**/
	@:native("SetLoops")
	public overload function setLoops(loops:Int):godot.SceneTreeTween;
	#end

	/**		
		Scales the speed of tweening. This affects all `godot.Tweener`s and their delays.
	**/
	@:native("SetSpeedScale")
	public function setSpeedScale(speed:Single):godot.SceneTreeTween;

	/**		
		Sets the default transition type for `godot.PropertyTweener`s and `godot.MethodTweener`s animated by this `godot.SceneTreeTween`.
	**/
	@:native("SetTrans")
	public function setTrans(trans:godot.Tween_TransitionType):godot.SceneTreeTween;

	/**		
		Sets the default ease type for `godot.PropertyTweener`s and `godot.MethodTweener`s animated by this `godot.SceneTreeTween`.
	**/
	@:native("SetEase")
	public function setEase(ease:godot.Tween_EaseType):godot.SceneTreeTween;

	/**		
		Makes the next `godot.Tweener` run parallelly to the previous one. Example:
		
		```
		
		var tween = create_tween()
		tween.tween_property(...)
		tween.parallel().tween_property(...)
		tween.parallel().tween_property(...)
		
		```
		
		All `godot.Tweener`s in the example will run at the same time.
		
		You can make the `godot.SceneTreeTween` parallel by default by using `godot.SceneTreeTween.setParallel`.
	**/
	@:native("Parallel")
	public function parallel():godot.SceneTreeTween;

	/**		
		Used to chain two `godot.Tweener`s after `godot.SceneTreeTween.setParallel` is called with `true`.
		
		```
		
		var tween = create_tween().set_parallel(true)
		tween.tween_property(...)
		tween.tween_property(...) # Will run parallelly with above.
		tween.chain().tween_property(...) # Will run after two above are finished.
		
		```
	**/
	@:native("Chain")
	public function chain():godot.SceneTreeTween;

	/**		
		This method can be used for manual interpolation of a value, when you don't want `godot.SceneTreeTween` to do animating for you. It's similar to `@GDScript.lerp`, but with support for custom transition and easing.
		
		`initial_value` is the starting value of the interpolation.
		
		`delta_value` is the change of the value in the interpolation, i.e. it's equal to `final_value - initial_value`.
		
		`elapsed_time` is the time in seconds that passed after the interpolation started and it's used to control the position of the interpolation. E.g. when it's equal to half of the `duration`, the interpolated value will be halfway between initial and final values. This value can also be greater than `duration` or lower than 0, which will extrapolate the value.
		
		`duration` is the total time of the interpolation.
		
		Note: If `duration` is equal to `0`, the method will always return the final value, regardless of `elapsed_time` provided.
	**/
	@:native("InterpolateValue")
	public function interpolateValue(initialValue:Dynamic, deltaValue:Dynamic, elapsedTime:Single, duration:Single, transType:godot.Tween_TransitionType, easeType:godot.Tween_EaseType):Dynamic;
}
