// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Base class of anything 2D. Canvas items are laid out in a tree; children inherit and extend their parent's transform. `godot.CanvasItem` is extended by `godot.Control` for anything GUI-related, and by `godot.Node2D` for anything related to the 2D engine.

Any `godot.CanvasItem` can draw. For this, `godot.CanvasItem.update` must be called, then `godot.CanvasItem.notificationDraw` will be received on idle time to request redraw. Because of this, canvas items don't need to be redrawn on every frame, improving the performance significantly. Several functions for drawing on the `godot.CanvasItem` are provided (see `draw_*` functions). However, they can only be used inside the `godot.Object._Notification`, signal or `godot.CanvasItem._Draw` virtual functions.

Canvas items are drawn in tree order. By default, children are on top of their parents so a root `godot.CanvasItem` will be drawn behind everything. This behavior can be changed on a per-item basis.

A `godot.CanvasItem` can also be hidden, which will also hide its children. It provides many ways to change parameters such as modulation (for itself and its children) and self modulation (only for itself), as well as its blend mode.

Ultimately, a transform notification can be requested, which will notify the node that its global position changed in case the parent tree changed.

Note: Unless otherwise specified, all methods that have angle parameters must have angles specified as radians. To convert degrees to radians, use `@GDScript.deg2rad`.
**/
@:libType
@:csNative
@:native("Godot.CanvasItem")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class CanvasItem extends godot.Node {
	/**
		`draw` signal.
		
		Emitted when the `CanvasItem` must redraw. This can only be connected realtime, as deferred will not allow drawing.
	**/
	public var onDraw(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onDraw():Signal<Void->Void> {
		return new Signal(this, "draw", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`hide` signal.
		
		Emitted when becoming hidden.
	**/
	public var onHide(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onHide():Signal<Void->Void> {
		return new Signal(this, "hide", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`item_rect_changed` signal.
		
		Emitted when the item's `Rect2` boundaries (position or size) have changed, or when an action is taking place that may have impacted these boundaries (e.g. changing `sprite.texture`).
	**/
	public var onItemRectChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onItemRectChanged():Signal<Void->Void> {
		return new Signal(this, "item_rect_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`visibility_changed` signal.
		
		Emitted when the visibility (hidden/visible) changes.
	**/
	public var onVisibilityChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onVisibilityChanged():Signal<Void->Void> {
		return new Signal(this, "visibility_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		If `true`, the parent `godot.CanvasItem`'s `godot.CanvasItem.material` property is used as this one's material.
	**/
	@:native("UseParentMaterial")
	public var useParentMaterial:Bool;

	/**		
		The material applied to textures on this `godot.CanvasItem`.
	**/
	@:native("Material")
	public var material:godot.Material;

	/**		
		The rendering layers in which this `godot.CanvasItem` responds to `godot.Light2D` nodes.
	**/
	@:native("LightMask")
	public var lightMask:Int;

	/**		
		If `true`, the object draws on top of its parent.
	**/
	@:native("ShowOnTop")
	public var showOnTop:Bool;

	/**		
		If `true`, the object draws behind its parent.
	**/
	@:native("ShowBehindParent")
	public var showBehindParent:Bool;

	/**		
		The color applied to textures on this `godot.CanvasItem`. This is not inherited by children `godot.CanvasItem`s.
	**/
	@:native("SelfModulate")
	public var selfModulate:godot.Color;

	/**		
		The color applied to textures on this `godot.CanvasItem`.
	**/
	@:native("Modulate")
	public var modulate:godot.Color;

	/**		
		If `true`, this `godot.CanvasItem` is drawn. The node is only visible if all of its antecedents are visible as well (in other words, `godot.CanvasItem.isVisibleInTree` must return `true`).
		
		Note: For controls that inherit `godot.Popup`, the correct way to make them visible is to call one of the multiple `popup*()` functions instead.
	**/
	@:native("Visible")
	public var visible:Bool;

	/**		
		The `godot.CanvasItem` has exited the canvas.
	**/
	@:native("NotificationExitCanvas")
	public static var NOTIFICATION_EXIT_CANVAS(default, never):Int;

	/**		
		The `godot.CanvasItem` has entered the canvas.
	**/
	@:native("NotificationEnterCanvas")
	public static var NOTIFICATION_ENTER_CANVAS(default, never):Int;

	/**		
		The `godot.CanvasItem`'s visibility has changed.
	**/
	@:native("NotificationVisibilityChanged")
	public static var NOTIFICATION_VISIBILITY_CHANGED(default, never):Int;

	/**		
		The `godot.CanvasItem` is requested to draw.
	**/
	@:native("NotificationDraw")
	public static var NOTIFICATION_DRAW(default, never):Int;

	/**		
		The `godot.CanvasItem`'s local transform has changed. This notification is only received if enabled by `godot.CanvasItem.setNotifyLocalTransform`.
	**/
	@:native("NotificationLocalTransformChanged")
	public static var NOTIFICATION_LOCAL_TRANSFORM_CHANGED(default, never):Int;

	/**		
		The `godot.CanvasItem`'s global transform has changed. This notification is only received if enabled by `godot.CanvasItem.setNotifyTransform`.
	**/
	@:native("NotificationTransformChanged")
	public static var NOTIFICATION_TRANSFORM_CHANGED(default, never):Int;

	/**		
		Overridable function called by the engine (if defined) to draw the canvas item.
	**/
	@:native("_Draw")
	public function _Draw():Void;

	/**		
		Returns the canvas item RID used by `godot.VisualServer` for this item.
	**/
	@:native("GetCanvasItem")
	public function getCanvasItem():godot.RID;

	@:native("SetVisible")
	public function setVisible(visible:Bool):Void;

	@:native("IsVisible")
	public function isVisible():Bool;

	/**		
		Returns `true` if the node is present in the `godot.SceneTree`, its `godot.CanvasItem.visible` property is `true` and all its antecedents are also visible. If any antecedent is hidden, this node will not be visible in the scene tree.
	**/
	@:native("IsVisibleInTree")
	public function isVisibleInTree():Bool;

	/**		
		Show the `godot.CanvasItem` if it's currently hidden. This is equivalent to setting `godot.CanvasItem.visible` to `true`. For controls that inherit `godot.Popup`, the correct way to make them visible is to call one of the multiple `popup*()` functions instead.
	**/
	@:native("Show")
	public function show():Void;

	/**		
		Hide the `godot.CanvasItem` if it's currently visible. This is equivalent to setting `godot.CanvasItem.visible` to `false`.
	**/
	@:native("Hide")
	public function hide():Void;

	/**		
		Queue the `godot.CanvasItem` for update. `godot.CanvasItem.notificationDraw` will be called on idle time to request redraw.
	**/
	@:native("Update")
	public function update():Void;

	/**		
		If `enable` is `true`, this `godot.CanvasItem` will not inherit its transform from parent `godot.CanvasItem`s. Its draw order will also be changed to make it draw on top of other `godot.CanvasItem`s that are not set as top-level. The `godot.CanvasItem` will effectively act as if it was placed as a child of a bare `godot.Node`. See also `godot.CanvasItem.isSetAsToplevel`.
	**/
	@:native("SetAsToplevel")
	public function setAsToplevel(enable:Bool):Void;

	/**		
		Returns `true` if the node is set as top-level. See `godot.CanvasItem.setAsToplevel`.
	**/
	@:native("IsSetAsToplevel")
	public function isSetAsToplevel():Bool;

	@:native("SetLightMask")
	public function setLightMask(lightMask:Int):Void;

	@:native("GetLightMask")
	public function getLightMask():Int;

	@:native("SetModulate")
	public function setModulate(modulate:godot.Color):Void;

	@:native("GetModulate")
	public function getModulate():godot.Color;

	@:native("SetSelfModulate")
	public function setSelfModulate(selfModulate:godot.Color):Void;

	@:native("GetSelfModulate")
	public function getSelfModulate():godot.Color;

	@:native("SetDrawBehindParent")
	public function setDrawBehindParent(enable:Bool):Void;

	@:native("IsDrawBehindParentEnabled")
	public function isDrawBehindParentEnabled():Bool;

	#if doc_gen
	/**		
		Draws a line from a 2D point to another, with a given color and width. It can be optionally antialiased. See also `godot.CanvasItem.drawMultiline` and `godot.CanvasItem.drawPolyline`.
		
		Note: Line drawing is not accelerated by batching if `antialiased` is `true`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent lines and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedLine2D node. That node relies on a texture with custom mipmaps to perform antialiasing. 2D batching is also still supported with those antialiased lines.
	**/
	@:native("DrawLine")
	public function drawLine(from:godot.Vector2, to:godot.Vector2, color:godot.Color, ?width:Single, ?antialiased:Bool):Void;
	#else
	/**		
		Draws a line from a 2D point to another, with a given color and width. It can be optionally antialiased. See also `godot.CanvasItem.drawMultiline` and `godot.CanvasItem.drawPolyline`.
		
		Note: Line drawing is not accelerated by batching if `antialiased` is `true`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent lines and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedLine2D node. That node relies on a texture with custom mipmaps to perform antialiasing. 2D batching is also still supported with those antialiased lines.
	**/
	@:native("DrawLine")
	public overload function drawLine(from:godot.Vector2, to:godot.Vector2, color:godot.Color):Void;

	/**		
		Draws a line from a 2D point to another, with a given color and width. It can be optionally antialiased. See also `godot.CanvasItem.drawMultiline` and `godot.CanvasItem.drawPolyline`.
		
		Note: Line drawing is not accelerated by batching if `antialiased` is `true`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent lines and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedLine2D node. That node relies on a texture with custom mipmaps to perform antialiasing. 2D batching is also still supported with those antialiased lines.
	**/
	@:native("DrawLine")
	public overload function drawLine(from:godot.Vector2, to:godot.Vector2, color:godot.Color, width:Single):Void;

	/**		
		Draws a line from a 2D point to another, with a given color and width. It can be optionally antialiased. See also `godot.CanvasItem.drawMultiline` and `godot.CanvasItem.drawPolyline`.
		
		Note: Line drawing is not accelerated by batching if `antialiased` is `true`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent lines and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedLine2D node. That node relies on a texture with custom mipmaps to perform antialiasing. 2D batching is also still supported with those antialiased lines.
	**/
	@:native("DrawLine")
	public overload function drawLine(from:godot.Vector2, to:godot.Vector2, color:godot.Color, width:Single, antialiased:Bool):Void;
	#end

	#if doc_gen
	/**		
		Draws interconnected line segments with a uniform `color` and `width` and optional antialiasing. When drawing large amounts of lines, this is faster than using individual `godot.CanvasItem.drawLine` calls. To draw disconnected lines, use `godot.CanvasItem.drawMultiline` instead. See also `godot.CanvasItem.drawPolygon`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent polygons and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
	**/
	@:native("DrawPolyline")
	public function drawPolyline(points:std.Array<godot.Vector2>, color:godot.Color, ?width:Single, ?antialiased:Bool):Void;
	#else
	/**		
		Draws interconnected line segments with a uniform `color` and `width` and optional antialiasing. When drawing large amounts of lines, this is faster than using individual `godot.CanvasItem.drawLine` calls. To draw disconnected lines, use `godot.CanvasItem.drawMultiline` instead. See also `godot.CanvasItem.drawPolygon`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent polygons and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
	**/
	@:native("DrawPolyline")
	public overload function drawPolyline(points:HaxeArray<godot.Vector2>, color:godot.Color):Void;

	/**		
		Draws interconnected line segments with a uniform `color` and `width` and optional antialiasing. When drawing large amounts of lines, this is faster than using individual `godot.CanvasItem.drawLine` calls. To draw disconnected lines, use `godot.CanvasItem.drawMultiline` instead. See also `godot.CanvasItem.drawPolygon`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent polygons and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
	**/
	@:native("DrawPolyline")
	public overload function drawPolyline(points:HaxeArray<godot.Vector2>, color:godot.Color, width:Single):Void;

	/**		
		Draws interconnected line segments with a uniform `color` and `width` and optional antialiasing. When drawing large amounts of lines, this is faster than using individual `godot.CanvasItem.drawLine` calls. To draw disconnected lines, use `godot.CanvasItem.drawMultiline` instead. See also `godot.CanvasItem.drawPolygon`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent polygons and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
	**/
	@:native("DrawPolyline")
	public overload function drawPolyline(points:HaxeArray<godot.Vector2>, color:godot.Color, width:Single, antialiased:Bool):Void;
	#end

	#if doc_gen
	/**		
		Draws interconnected line segments with a uniform `width` and segment-by-segment coloring, and optional antialiasing. Colors assigned to line segments match by index between `points` and `colors`. When drawing large amounts of lines, this is faster than using individual `godot.CanvasItem.drawLine` calls. To draw disconnected lines, use `godot.CanvasItem.drawMultilineColors` instead. See also `godot.CanvasItem.drawPolygon`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent polygons and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
	**/
	@:native("DrawPolylineColors")
	public function drawPolylineColors(points:std.Array<godot.Vector2>, colors:std.Array<godot.Color>, ?width:Single, ?antialiased:Bool):Void;
	#else
	/**		
		Draws interconnected line segments with a uniform `width` and segment-by-segment coloring, and optional antialiasing. Colors assigned to line segments match by index between `points` and `colors`. When drawing large amounts of lines, this is faster than using individual `godot.CanvasItem.drawLine` calls. To draw disconnected lines, use `godot.CanvasItem.drawMultilineColors` instead. See also `godot.CanvasItem.drawPolygon`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent polygons and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
	**/
	@:native("DrawPolylineColors")
	public overload function drawPolylineColors(points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>):Void;

	/**		
		Draws interconnected line segments with a uniform `width` and segment-by-segment coloring, and optional antialiasing. Colors assigned to line segments match by index between `points` and `colors`. When drawing large amounts of lines, this is faster than using individual `godot.CanvasItem.drawLine` calls. To draw disconnected lines, use `godot.CanvasItem.drawMultilineColors` instead. See also `godot.CanvasItem.drawPolygon`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent polygons and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
	**/
	@:native("DrawPolylineColors")
	public overload function drawPolylineColors(points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, width:Single):Void;

	/**		
		Draws interconnected line segments with a uniform `width` and segment-by-segment coloring, and optional antialiasing. Colors assigned to line segments match by index between `points` and `colors`. When drawing large amounts of lines, this is faster than using individual `godot.CanvasItem.drawLine` calls. To draw disconnected lines, use `godot.CanvasItem.drawMultilineColors` instead. See also `godot.CanvasItem.drawPolygon`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent polygons and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
	**/
	@:native("DrawPolylineColors")
	public overload function drawPolylineColors(points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, width:Single, antialiased:Bool):Void;
	#end

	#if doc_gen
	/**		
		Draws a unfilled arc between the given angles. The larger the value of `point_count`, the smoother the curve. See also `godot.CanvasItem.drawCircle`.
		
		Note: Line drawing is not accelerated by batching if `antialiased` is `true`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent lines and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedRegularPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing. 2D batching is also still supported with those antialiased lines.
	**/
	@:native("DrawArc")
	public function drawArc(center:godot.Vector2, radius:Single, startAngle:Single, endAngle:Single, pointCount:Int, color:godot.Color, ?width:Single, ?antialiased:Bool):Void;
	#else
	/**		
		Draws a unfilled arc between the given angles. The larger the value of `point_count`, the smoother the curve. See also `godot.CanvasItem.drawCircle`.
		
		Note: Line drawing is not accelerated by batching if `antialiased` is `true`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent lines and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedRegularPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing. 2D batching is also still supported with those antialiased lines.
	**/
	@:native("DrawArc")
	public overload function drawArc(center:godot.Vector2, radius:Single, startAngle:Single, endAngle:Single, pointCount:Int, color:godot.Color):Void;

	/**		
		Draws a unfilled arc between the given angles. The larger the value of `point_count`, the smoother the curve. See also `godot.CanvasItem.drawCircle`.
		
		Note: Line drawing is not accelerated by batching if `antialiased` is `true`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent lines and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedRegularPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing. 2D batching is also still supported with those antialiased lines.
	**/
	@:native("DrawArc")
	public overload function drawArc(center:godot.Vector2, radius:Single, startAngle:Single, endAngle:Single, pointCount:Int, color:godot.Color, width:Single):Void;

	/**		
		Draws a unfilled arc between the given angles. The larger the value of `point_count`, the smoother the curve. See also `godot.CanvasItem.drawCircle`.
		
		Note: Line drawing is not accelerated by batching if `antialiased` is `true`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent lines and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedRegularPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing. 2D batching is also still supported with those antialiased lines.
	**/
	@:native("DrawArc")
	public overload function drawArc(center:godot.Vector2, radius:Single, startAngle:Single, endAngle:Single, pointCount:Int, color:godot.Color, width:Single, antialiased:Bool):Void;
	#end

	#if doc_gen
	/**		
		Draws multiple disconnected lines with a uniform `color`. When drawing large amounts of lines, this is faster than using individual `godot.CanvasItem.drawLine` calls. To draw interconnected lines, use `godot.CanvasItem.drawPolyline` instead.
		
		Note: `width` and `antialiased` are currently not implemented and have no effect. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedLine2D node. That node relies on a texture with custom mipmaps to perform antialiasing. 2D batching is also still supported with those antialiased lines.
	**/
	@:native("DrawMultiline")
	public function drawMultiline(points:std.Array<godot.Vector2>, color:godot.Color, ?width:Single, ?antialiased:Bool):Void;
	#else
	/**		
		Draws multiple disconnected lines with a uniform `color`. When drawing large amounts of lines, this is faster than using individual `godot.CanvasItem.drawLine` calls. To draw interconnected lines, use `godot.CanvasItem.drawPolyline` instead.
		
		Note: `width` and `antialiased` are currently not implemented and have no effect. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedLine2D node. That node relies on a texture with custom mipmaps to perform antialiasing. 2D batching is also still supported with those antialiased lines.
	**/
	@:native("DrawMultiline")
	public overload function drawMultiline(points:HaxeArray<godot.Vector2>, color:godot.Color):Void;

	/**		
		Draws multiple disconnected lines with a uniform `color`. When drawing large amounts of lines, this is faster than using individual `godot.CanvasItem.drawLine` calls. To draw interconnected lines, use `godot.CanvasItem.drawPolyline` instead.
		
		Note: `width` and `antialiased` are currently not implemented and have no effect. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedLine2D node. That node relies on a texture with custom mipmaps to perform antialiasing. 2D batching is also still supported with those antialiased lines.
	**/
	@:native("DrawMultiline")
	public overload function drawMultiline(points:HaxeArray<godot.Vector2>, color:godot.Color, width:Single):Void;

	/**		
		Draws multiple disconnected lines with a uniform `color`. When drawing large amounts of lines, this is faster than using individual `godot.CanvasItem.drawLine` calls. To draw interconnected lines, use `godot.CanvasItem.drawPolyline` instead.
		
		Note: `width` and `antialiased` are currently not implemented and have no effect. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedLine2D node. That node relies on a texture with custom mipmaps to perform antialiasing. 2D batching is also still supported with those antialiased lines.
	**/
	@:native("DrawMultiline")
	public overload function drawMultiline(points:HaxeArray<godot.Vector2>, color:godot.Color, width:Single, antialiased:Bool):Void;
	#end

	#if doc_gen
	/**		
		Draws multiple disconnected lines with a uniform `width` and segment-by-segment coloring. Colors assigned to line segments match by index between `points` and `colors`. When drawing large amounts of lines, this is faster than using individual `godot.CanvasItem.drawLine` calls. To draw interconnected lines, use `godot.CanvasItem.drawPolylineColors` instead.
		
		Note: `width` and `antialiased` are currently not implemented and have no effect. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedLine2D node. That node relies on a texture with custom mipmaps to perform antialiasing. 2D batching is also still supported with those antialiased lines.
	**/
	@:native("DrawMultilineColors")
	public function drawMultilineColors(points:std.Array<godot.Vector2>, colors:std.Array<godot.Color>, ?width:Single, ?antialiased:Bool):Void;
	#else
	/**		
		Draws multiple disconnected lines with a uniform `width` and segment-by-segment coloring. Colors assigned to line segments match by index between `points` and `colors`. When drawing large amounts of lines, this is faster than using individual `godot.CanvasItem.drawLine` calls. To draw interconnected lines, use `godot.CanvasItem.drawPolylineColors` instead.
		
		Note: `width` and `antialiased` are currently not implemented and have no effect. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedLine2D node. That node relies on a texture with custom mipmaps to perform antialiasing. 2D batching is also still supported with those antialiased lines.
	**/
	@:native("DrawMultilineColors")
	public overload function drawMultilineColors(points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>):Void;

	/**		
		Draws multiple disconnected lines with a uniform `width` and segment-by-segment coloring. Colors assigned to line segments match by index between `points` and `colors`. When drawing large amounts of lines, this is faster than using individual `godot.CanvasItem.drawLine` calls. To draw interconnected lines, use `godot.CanvasItem.drawPolylineColors` instead.
		
		Note: `width` and `antialiased` are currently not implemented and have no effect. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedLine2D node. That node relies on a texture with custom mipmaps to perform antialiasing. 2D batching is also still supported with those antialiased lines.
	**/
	@:native("DrawMultilineColors")
	public overload function drawMultilineColors(points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, width:Single):Void;

	/**		
		Draws multiple disconnected lines with a uniform `width` and segment-by-segment coloring. Colors assigned to line segments match by index between `points` and `colors`. When drawing large amounts of lines, this is faster than using individual `godot.CanvasItem.drawLine` calls. To draw interconnected lines, use `godot.CanvasItem.drawPolylineColors` instead.
		
		Note: `width` and `antialiased` are currently not implemented and have no effect. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedLine2D node. That node relies on a texture with custom mipmaps to perform antialiasing. 2D batching is also still supported with those antialiased lines.
	**/
	@:native("DrawMultilineColors")
	public overload function drawMultilineColors(points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, width:Single, antialiased:Bool):Void;
	#end

	#if doc_gen
	/**		
		Draws a rectangle. If `filled` is `true`, the rectangle will be filled with the `color` specified. If `filled` is `false`, the rectangle will be drawn as a stroke with the `color` and `width` specified. If `antialiased` is `true`, the lines will attempt to perform antialiasing using OpenGL line smoothing.
		
		Note: `width` and `antialiased` are only effective if `filled` is `false`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent polygons and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
	**/
	@:native("DrawRect")
	public function drawRect(rect:godot.Rect2, color:godot.Color, ?filled:Bool, ?width:Single, ?antialiased:Bool):Void;
	#else
	/**		
		Draws a rectangle. If `filled` is `true`, the rectangle will be filled with the `color` specified. If `filled` is `false`, the rectangle will be drawn as a stroke with the `color` and `width` specified. If `antialiased` is `true`, the lines will attempt to perform antialiasing using OpenGL line smoothing.
		
		Note: `width` and `antialiased` are only effective if `filled` is `false`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent polygons and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
	**/
	@:native("DrawRect")
	public overload function drawRect(rect:godot.Rect2, color:godot.Color):Void;

	/**		
		Draws a rectangle. If `filled` is `true`, the rectangle will be filled with the `color` specified. If `filled` is `false`, the rectangle will be drawn as a stroke with the `color` and `width` specified. If `antialiased` is `true`, the lines will attempt to perform antialiasing using OpenGL line smoothing.
		
		Note: `width` and `antialiased` are only effective if `filled` is `false`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent polygons and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
	**/
	@:native("DrawRect")
	public overload function drawRect(rect:godot.Rect2, color:godot.Color, filled:Bool):Void;

	/**		
		Draws a rectangle. If `filled` is `true`, the rectangle will be filled with the `color` specified. If `filled` is `false`, the rectangle will be drawn as a stroke with the `color` and `width` specified. If `antialiased` is `true`, the lines will attempt to perform antialiasing using OpenGL line smoothing.
		
		Note: `width` and `antialiased` are only effective if `filled` is `false`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent polygons and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
	**/
	@:native("DrawRect")
	public overload function drawRect(rect:godot.Rect2, color:godot.Color, filled:Bool, width:Single):Void;

	/**		
		Draws a rectangle. If `filled` is `true`, the rectangle will be filled with the `color` specified. If `filled` is `false`, the rectangle will be drawn as a stroke with the `color` and `width` specified. If `antialiased` is `true`, the lines will attempt to perform antialiasing using OpenGL line smoothing.
		
		Note: `width` and `antialiased` are only effective if `filled` is `false`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent polygons and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
	**/
	@:native("DrawRect")
	public overload function drawRect(rect:godot.Rect2, color:godot.Color, filled:Bool, width:Single, antialiased:Bool):Void;
	#end

	/**		
		Draws a colored, filled circle. See also `godot.CanvasItem.drawArc`, `godot.CanvasItem.drawPolyline` and `godot.CanvasItem.drawPolygon`.
		
		Note: Built-in antialiasing is not provided for `godot.CanvasItem.drawCircle`. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedRegularPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
	**/
	@:native("DrawCircle")
	public function drawCircle(position:godot.Vector2, radius:Single, color:godot.Color):Void;

	#if doc_gen
	/**		
		Draws a texture at a given position.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawTexture")
	public function drawTexture(texture:godot.Texture, position:godot.Vector2, ?modulate:Null<godot.Color>, ?normalMap:godot.Texture):Void;
	#else
	/**		
		Draws a texture at a given position.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawTexture")
	public overload function drawTexture(texture:godot.Texture, position:godot.Vector2):Void;

	/**		
		Draws a texture at a given position.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawTexture")
	public overload function drawTexture(texture:godot.Texture, position:godot.Vector2, modulate:Nullable1<godot.Color>):Void;

	/**		
		Draws a texture at a given position.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawTexture")
	public overload function drawTexture(texture:godot.Texture, position:godot.Vector2, modulate:Nullable1<godot.Color>, normalMap:godot.Texture):Void;
	#end

	#if doc_gen
	/**		
		Draws a textured rectangle at a given position, optionally modulated by a color. If `transpose` is `true`, the texture will have its X and Y coordinates swapped.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawTextureRect")
	public function drawTextureRect(texture:godot.Texture, rect:godot.Rect2, tile:Bool, ?modulate:Null<godot.Color>, ?transpose:Bool, ?normalMap:godot.Texture):Void;
	#else
	/**		
		Draws a textured rectangle at a given position, optionally modulated by a color. If `transpose` is `true`, the texture will have its X and Y coordinates swapped.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawTextureRect")
	public overload function drawTextureRect(texture:godot.Texture, rect:godot.Rect2, tile:Bool):Void;

	/**		
		Draws a textured rectangle at a given position, optionally modulated by a color. If `transpose` is `true`, the texture will have its X and Y coordinates swapped.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawTextureRect")
	public overload function drawTextureRect(texture:godot.Texture, rect:godot.Rect2, tile:Bool, modulate:Nullable1<godot.Color>):Void;

	/**		
		Draws a textured rectangle at a given position, optionally modulated by a color. If `transpose` is `true`, the texture will have its X and Y coordinates swapped.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawTextureRect")
	public overload function drawTextureRect(texture:godot.Texture, rect:godot.Rect2, tile:Bool, modulate:Nullable1<godot.Color>, transpose:Bool):Void;

	/**		
		Draws a textured rectangle at a given position, optionally modulated by a color. If `transpose` is `true`, the texture will have its X and Y coordinates swapped.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawTextureRect")
	public overload function drawTextureRect(texture:godot.Texture, rect:godot.Rect2, tile:Bool, modulate:Nullable1<godot.Color>, transpose:Bool, normalMap:godot.Texture):Void;
	#end

	#if doc_gen
	/**		
		Draws a textured rectangle region at a given position, optionally modulated by a color. If `transpose` is `true`, the texture will have its X and Y coordinates swapped.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawTextureRectRegion")
	public function drawTextureRectRegion(texture:godot.Texture, rect:godot.Rect2, srcRect:godot.Rect2, ?modulate:Null<godot.Color>, ?transpose:Bool, ?normalMap:godot.Texture, ?clipUv:Bool):Void;
	#else
	/**		
		Draws a textured rectangle region at a given position, optionally modulated by a color. If `transpose` is `true`, the texture will have its X and Y coordinates swapped.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawTextureRectRegion")
	public overload function drawTextureRectRegion(texture:godot.Texture, rect:godot.Rect2, srcRect:godot.Rect2):Void;

	/**		
		Draws a textured rectangle region at a given position, optionally modulated by a color. If `transpose` is `true`, the texture will have its X and Y coordinates swapped.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawTextureRectRegion")
	public overload function drawTextureRectRegion(texture:godot.Texture, rect:godot.Rect2, srcRect:godot.Rect2, modulate:Nullable1<godot.Color>):Void;

	/**		
		Draws a textured rectangle region at a given position, optionally modulated by a color. If `transpose` is `true`, the texture will have its X and Y coordinates swapped.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawTextureRectRegion")
	public overload function drawTextureRectRegion(texture:godot.Texture, rect:godot.Rect2, srcRect:godot.Rect2, modulate:Nullable1<godot.Color>, transpose:Bool):Void;

	/**		
		Draws a textured rectangle region at a given position, optionally modulated by a color. If `transpose` is `true`, the texture will have its X and Y coordinates swapped.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawTextureRectRegion")
	public overload function drawTextureRectRegion(texture:godot.Texture, rect:godot.Rect2, srcRect:godot.Rect2, modulate:Nullable1<godot.Color>, transpose:Bool, normalMap:godot.Texture):Void;

	/**		
		Draws a textured rectangle region at a given position, optionally modulated by a color. If `transpose` is `true`, the texture will have its X and Y coordinates swapped.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawTextureRectRegion")
	public overload function drawTextureRectRegion(texture:godot.Texture, rect:godot.Rect2, srcRect:godot.Rect2, modulate:Nullable1<godot.Color>, transpose:Bool, normalMap:godot.Texture, clipUv:Bool):Void;
	#end

	/**		
		Draws a styled rectangle.
	**/
	@:native("DrawStyleBox")
	public function drawStyleBox(styleBox:godot.StyleBox, rect:godot.Rect2):Void;

	#if doc_gen
	/**		
		Draws a custom primitive. 1 point for a point, 2 points for a line, 3 points for a triangle, and 4 points for a quad. If 0 points or more than 4 points are specified, nothing will be drawn and an error message will be printed. See also `godot.CanvasItem.drawLine`, `godot.CanvasItem.drawPolyline`, `godot.CanvasItem.drawPolygon`, and `godot.CanvasItem.drawRect`.
	**/
	@:native("DrawPrimitive")
	public function drawPrimitive(points:std.Array<godot.Vector2>, colors:std.Array<godot.Color>, uvs:std.Array<godot.Vector2>, ?texture:godot.Texture, ?width:Single, ?normalMap:godot.Texture):Void;
	#else
	/**		
		Draws a custom primitive. 1 point for a point, 2 points for a line, 3 points for a triangle, and 4 points for a quad. If 0 points or more than 4 points are specified, nothing will be drawn and an error message will be printed. See also `godot.CanvasItem.drawLine`, `godot.CanvasItem.drawPolyline`, `godot.CanvasItem.drawPolygon`, and `godot.CanvasItem.drawRect`.
	**/
	@:native("DrawPrimitive")
	public overload function drawPrimitive(points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, uvs:HaxeArray<godot.Vector2>):Void;

	/**		
		Draws a custom primitive. 1 point for a point, 2 points for a line, 3 points for a triangle, and 4 points for a quad. If 0 points or more than 4 points are specified, nothing will be drawn and an error message will be printed. See also `godot.CanvasItem.drawLine`, `godot.CanvasItem.drawPolyline`, `godot.CanvasItem.drawPolygon`, and `godot.CanvasItem.drawRect`.
	**/
	@:native("DrawPrimitive")
	public overload function drawPrimitive(points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, uvs:HaxeArray<godot.Vector2>, texture:godot.Texture):Void;

	/**		
		Draws a custom primitive. 1 point for a point, 2 points for a line, 3 points for a triangle, and 4 points for a quad. If 0 points or more than 4 points are specified, nothing will be drawn and an error message will be printed. See also `godot.CanvasItem.drawLine`, `godot.CanvasItem.drawPolyline`, `godot.CanvasItem.drawPolygon`, and `godot.CanvasItem.drawRect`.
	**/
	@:native("DrawPrimitive")
	public overload function drawPrimitive(points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, uvs:HaxeArray<godot.Vector2>, texture:godot.Texture, width:Single):Void;

	/**		
		Draws a custom primitive. 1 point for a point, 2 points for a line, 3 points for a triangle, and 4 points for a quad. If 0 points or more than 4 points are specified, nothing will be drawn and an error message will be printed. See also `godot.CanvasItem.drawLine`, `godot.CanvasItem.drawPolyline`, `godot.CanvasItem.drawPolygon`, and `godot.CanvasItem.drawRect`.
	**/
	@:native("DrawPrimitive")
	public overload function drawPrimitive(points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, uvs:HaxeArray<godot.Vector2>, texture:godot.Texture, width:Single, normalMap:godot.Texture):Void;
	#end

	#if doc_gen
	/**		
		Draws a solid polygon of any amount of points, convex or concave. Unlike `godot.CanvasItem.drawColoredPolygon`, each point's color can be changed individually. See also `godot.CanvasItem.drawPolyline` and `godot.CanvasItem.drawPolylineColors`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent polygons and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
		
		@param uvs If the parameter is null, then the default value is Array.Empty&lt;Vector2&gt;()
	**/
	@:native("DrawPolygon")
	public function drawPolygon(points:std.Array<godot.Vector2>, colors:std.Array<godot.Color>, ?uvs:std.Array<godot.Vector2>, ?texture:godot.Texture, ?normalMap:godot.Texture, ?antialiased:Bool):Void;
	#else
	/**		
		Draws a solid polygon of any amount of points, convex or concave. Unlike `godot.CanvasItem.drawColoredPolygon`, each point's color can be changed individually. See also `godot.CanvasItem.drawPolyline` and `godot.CanvasItem.drawPolylineColors`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent polygons and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
		
		@param uvs If the parameter is null, then the default value is Array.Empty&lt;Vector2&gt;()
	**/
	@:native("DrawPolygon")
	public overload function drawPolygon(points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>):Void;

	/**		
		Draws a solid polygon of any amount of points, convex or concave. Unlike `godot.CanvasItem.drawColoredPolygon`, each point's color can be changed individually. See also `godot.CanvasItem.drawPolyline` and `godot.CanvasItem.drawPolylineColors`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent polygons and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
		
		@param uvs If the parameter is null, then the default value is Array.Empty&lt;Vector2&gt;()
	**/
	@:native("DrawPolygon")
	public overload function drawPolygon(points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, uvs:HaxeArray<godot.Vector2>):Void;

	/**		
		Draws a solid polygon of any amount of points, convex or concave. Unlike `godot.CanvasItem.drawColoredPolygon`, each point's color can be changed individually. See also `godot.CanvasItem.drawPolyline` and `godot.CanvasItem.drawPolylineColors`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent polygons and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
		
		@param uvs If the parameter is null, then the default value is Array.Empty&lt;Vector2&gt;()
	**/
	@:native("DrawPolygon")
	public overload function drawPolygon(points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, uvs:HaxeArray<godot.Vector2>, texture:godot.Texture):Void;

	/**		
		Draws a solid polygon of any amount of points, convex or concave. Unlike `godot.CanvasItem.drawColoredPolygon`, each point's color can be changed individually. See also `godot.CanvasItem.drawPolyline` and `godot.CanvasItem.drawPolylineColors`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent polygons and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
		
		@param uvs If the parameter is null, then the default value is Array.Empty&lt;Vector2&gt;()
	**/
	@:native("DrawPolygon")
	public overload function drawPolygon(points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, uvs:HaxeArray<godot.Vector2>, texture:godot.Texture, normalMap:godot.Texture):Void;

	/**		
		Draws a solid polygon of any amount of points, convex or concave. Unlike `godot.CanvasItem.drawColoredPolygon`, each point's color can be changed individually. See also `godot.CanvasItem.drawPolyline` and `godot.CanvasItem.drawPolylineColors`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent polygons and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
		
		@param uvs If the parameter is null, then the default value is Array.Empty&lt;Vector2&gt;()
	**/
	@:native("DrawPolygon")
	public overload function drawPolygon(points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, uvs:HaxeArray<godot.Vector2>, texture:godot.Texture, normalMap:godot.Texture, antialiased:Bool):Void;
	#end

	#if doc_gen
	/**		
		Draws a colored polygon of any amount of points, convex or concave. Unlike `godot.CanvasItem.drawPolygon`, a single color must be specified for the whole polygon.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent polygons and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
		
		@param uvs If the parameter is null, then the default value is Array.Empty&lt;Vector2&gt;()
	**/
	@:native("DrawColoredPolygon")
	public function drawColoredPolygon(points:std.Array<godot.Vector2>, color:godot.Color, ?uvs:std.Array<godot.Vector2>, ?texture:godot.Texture, ?normalMap:godot.Texture, ?antialiased:Bool):Void;
	#else
	/**		
		Draws a colored polygon of any amount of points, convex or concave. Unlike `godot.CanvasItem.drawPolygon`, a single color must be specified for the whole polygon.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent polygons and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
		
		@param uvs If the parameter is null, then the default value is Array.Empty&lt;Vector2&gt;()
	**/
	@:native("DrawColoredPolygon")
	public overload function drawColoredPolygon(points:HaxeArray<godot.Vector2>, color:godot.Color):Void;

	/**		
		Draws a colored polygon of any amount of points, convex or concave. Unlike `godot.CanvasItem.drawPolygon`, a single color must be specified for the whole polygon.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent polygons and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
		
		@param uvs If the parameter is null, then the default value is Array.Empty&lt;Vector2&gt;()
	**/
	@:native("DrawColoredPolygon")
	public overload function drawColoredPolygon(points:HaxeArray<godot.Vector2>, color:godot.Color, uvs:HaxeArray<godot.Vector2>):Void;

	/**		
		Draws a colored polygon of any amount of points, convex or concave. Unlike `godot.CanvasItem.drawPolygon`, a single color must be specified for the whole polygon.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent polygons and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
		
		@param uvs If the parameter is null, then the default value is Array.Empty&lt;Vector2&gt;()
	**/
	@:native("DrawColoredPolygon")
	public overload function drawColoredPolygon(points:HaxeArray<godot.Vector2>, color:godot.Color, uvs:HaxeArray<godot.Vector2>, texture:godot.Texture):Void;

	/**		
		Draws a colored polygon of any amount of points, convex or concave. Unlike `godot.CanvasItem.drawPolygon`, a single color must be specified for the whole polygon.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent polygons and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
		
		@param uvs If the parameter is null, then the default value is Array.Empty&lt;Vector2&gt;()
	**/
	@:native("DrawColoredPolygon")
	public overload function drawColoredPolygon(points:HaxeArray<godot.Vector2>, color:godot.Color, uvs:HaxeArray<godot.Vector2>, texture:godot.Texture, normalMap:godot.Texture):Void;

	/**		
		Draws a colored polygon of any amount of points, convex or concave. Unlike `godot.CanvasItem.drawPolygon`, a single color must be specified for the whole polygon.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent polygons and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
		
		@param uvs If the parameter is null, then the default value is Array.Empty&lt;Vector2&gt;()
	**/
	@:native("DrawColoredPolygon")
	public overload function drawColoredPolygon(points:HaxeArray<godot.Vector2>, color:godot.Color, uvs:HaxeArray<godot.Vector2>, texture:godot.Texture, normalMap:godot.Texture, antialiased:Bool):Void;
	#end

	#if doc_gen
	/**		
		Draws `text` using the specified `font` at the `position` (bottom-left corner using the baseline of the font). The text will have its color multiplied by `modulate`. If `clip_w` is greater than or equal to 0, the text will be clipped if it exceeds the specified width.
		
		Example using the default project font:
		
		```
		
		# If using this method in a script that redraws constantly, move the
		# `default_font` declaration to a member variable assigned in `_ready()`
		# so the Control is only created once.
		var default_font = Control.new().get_font("font")
		draw_string(default_font, Vector2(64, 64), "Hello world")
		
		```
		
		See also `godot.Font.draw`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawString")
	public function drawString(font:godot.Font, position:godot.Vector2, text:std.String, ?modulate:Null<godot.Color>, ?clipW:Int):Void;
	#else
	/**		
		Draws `text` using the specified `font` at the `position` (bottom-left corner using the baseline of the font). The text will have its color multiplied by `modulate`. If `clip_w` is greater than or equal to 0, the text will be clipped if it exceeds the specified width.
		
		Example using the default project font:
		
		```
		
		# If using this method in a script that redraws constantly, move the
		# `default_font` declaration to a member variable assigned in `_ready()`
		# so the Control is only created once.
		var default_font = Control.new().get_font("font")
		draw_string(default_font, Vector2(64, 64), "Hello world")
		
		```
		
		See also `godot.Font.draw`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawString")
	public overload function drawString(font:godot.Font, position:godot.Vector2, text:std.String):Void;

	/**		
		Draws `text` using the specified `font` at the `position` (bottom-left corner using the baseline of the font). The text will have its color multiplied by `modulate`. If `clip_w` is greater than or equal to 0, the text will be clipped if it exceeds the specified width.
		
		Example using the default project font:
		
		```
		
		# If using this method in a script that redraws constantly, move the
		# `default_font` declaration to a member variable assigned in `_ready()`
		# so the Control is only created once.
		var default_font = Control.new().get_font("font")
		draw_string(default_font, Vector2(64, 64), "Hello world")
		
		```
		
		See also `godot.Font.draw`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawString")
	public overload function drawString(font:godot.Font, position:godot.Vector2, text:std.String, modulate:Nullable1<godot.Color>):Void;

	/**		
		Draws `text` using the specified `font` at the `position` (bottom-left corner using the baseline of the font). The text will have its color multiplied by `modulate`. If `clip_w` is greater than or equal to 0, the text will be clipped if it exceeds the specified width.
		
		Example using the default project font:
		
		```
		
		# If using this method in a script that redraws constantly, move the
		# `default_font` declaration to a member variable assigned in `_ready()`
		# so the Control is only created once.
		var default_font = Control.new().get_font("font")
		draw_string(default_font, Vector2(64, 64), "Hello world")
		
		```
		
		See also `godot.Font.draw`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawString")
	public overload function drawString(font:godot.Font, position:godot.Vector2, text:std.String, modulate:Nullable1<godot.Color>, clipW:Int):Void;
	#end

	#if doc_gen
	/**		
		Draws a string character using a custom font. Returns the advance, depending on the character width and kerning with an optional next character.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawChar")
	public function drawChar(font:godot.Font, position:godot.Vector2, char:std.String, next:std.String, ?modulate:Null<godot.Color>):Single;
	#else
	/**		
		Draws a string character using a custom font. Returns the advance, depending on the character width and kerning with an optional next character.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawChar")
	public overload function drawChar(font:godot.Font, position:godot.Vector2, char:std.String, next:std.String):Single;

	/**		
		Draws a string character using a custom font. Returns the advance, depending on the character width and kerning with an optional next character.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawChar")
	public overload function drawChar(font:godot.Font, position:godot.Vector2, char:std.String, next:std.String, modulate:Nullable1<godot.Color>):Single;
	#end

	#if doc_gen
	/**		
		Draws a `godot.Mesh` in 2D, using the provided texture. See `godot.MeshInstance2D` for related documentation.
		
		@param transform If the parameter is null, then the default value is Transform2D.Identity
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawMesh")
	public function drawMesh(mesh:godot.Mesh, texture:godot.Texture, ?normalMap:godot.Texture, ?transform:Null<godot.Transform2D>, ?modulate:Null<godot.Color>):Void;
	#else
	/**		
		Draws a `godot.Mesh` in 2D, using the provided texture. See `godot.MeshInstance2D` for related documentation.
		
		@param transform If the parameter is null, then the default value is Transform2D.Identity
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawMesh")
	public overload function drawMesh(mesh:godot.Mesh, texture:godot.Texture):Void;

	/**		
		Draws a `godot.Mesh` in 2D, using the provided texture. See `godot.MeshInstance2D` for related documentation.
		
		@param transform If the parameter is null, then the default value is Transform2D.Identity
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawMesh")
	public overload function drawMesh(mesh:godot.Mesh, texture:godot.Texture, normalMap:godot.Texture):Void;

	/**		
		Draws a `godot.Mesh` in 2D, using the provided texture. See `godot.MeshInstance2D` for related documentation.
		
		@param transform If the parameter is null, then the default value is Transform2D.Identity
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawMesh")
	public overload function drawMesh(mesh:godot.Mesh, texture:godot.Texture, normalMap:godot.Texture, transform:Nullable1<godot.Transform2D>):Void;

	/**		
		Draws a `godot.Mesh` in 2D, using the provided texture. See `godot.MeshInstance2D` for related documentation.
		
		@param transform If the parameter is null, then the default value is Transform2D.Identity
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawMesh")
	public overload function drawMesh(mesh:godot.Mesh, texture:godot.Texture, normalMap:godot.Texture, transform:Nullable1<godot.Transform2D>, modulate:Nullable1<godot.Color>):Void;
	#end

	#if doc_gen
	/**		
		Draws a `godot.MultiMesh` in 2D with the provided texture. See `godot.MultiMeshInstance2D` for related documentation.
	**/
	@:native("DrawMultimesh")
	public function drawMultimesh(multimesh:godot.MultiMesh, texture:godot.Texture, ?normalMap:godot.Texture):Void;
	#else
	/**		
		Draws a `godot.MultiMesh` in 2D with the provided texture. See `godot.MultiMeshInstance2D` for related documentation.
	**/
	@:native("DrawMultimesh")
	public overload function drawMultimesh(multimesh:godot.MultiMesh, texture:godot.Texture):Void;

	/**		
		Draws a `godot.MultiMesh` in 2D with the provided texture. See `godot.MultiMeshInstance2D` for related documentation.
	**/
	@:native("DrawMultimesh")
	public overload function drawMultimesh(multimesh:godot.MultiMesh, texture:godot.Texture, normalMap:godot.Texture):Void;
	#end

	/**		
		Sets a custom transform for drawing via components. Anything drawn afterwards will be transformed by this.
	**/
	@:native("DrawSetTransform")
	public function drawSetTransform(position:godot.Vector2, rotation:Single, scale:godot.Vector2):Void;

	/**		
		Sets a custom transform for drawing via matrix. Anything drawn afterwards will be transformed by this.
	**/
	@:native("DrawSetTransformMatrix")
	public function drawSetTransformMatrix(xform:godot.Transform2D):Void;

	/**		
		Returns the transform matrix of this item.
	**/
	@:native("GetTransform")
	public function getTransform():godot.Transform2D;

	/**		
		Returns the global transform matrix of this item.
	**/
	@:native("GetGlobalTransform")
	public function getGlobalTransform():godot.Transform2D;

	/**		
		Returns the global transform matrix of this item in relation to the canvas.
	**/
	@:native("GetGlobalTransformWithCanvas")
	public function getGlobalTransformWithCanvas():godot.Transform2D;

	/**		
		Returns this item's transform in relation to the viewport.
	**/
	@:native("GetViewportTransform")
	public function getViewportTransform():godot.Transform2D;

	/**		
		Returns the viewport's boundaries as a `godot.Rect2`.
	**/
	@:native("GetViewportRect")
	public function getViewportRect():godot.Rect2;

	/**		
		Returns the transform matrix of this item's canvas.
	**/
	@:native("GetCanvasTransform")
	public function getCanvasTransform():godot.Transform2D;

	/**		
		Returns the mouse's position in this `godot.CanvasItem` using the local coordinate system of this `godot.CanvasItem`.
	**/
	@:native("GetLocalMousePosition")
	public function getLocalMousePosition():godot.Vector2;

	/**		
		Returns the mouse's position in the `godot.CanvasLayer` that this `godot.CanvasItem` is in using the coordinate system of the `godot.CanvasLayer`.
	**/
	@:native("GetGlobalMousePosition")
	public function getGlobalMousePosition():godot.Vector2;

	/**		
		Returns the `godot.RID` of the `godot.World2D` canvas where this item is in.
	**/
	@:native("GetCanvas")
	public function getCanvas():godot.RID;

	/**		
		Returns the `godot.World2D` where this item is in.
	**/
	@:native("GetWorld2d")
	public function getWorld2d():godot.World2D;

	@:native("SetMaterial")
	public function setMaterial(material:godot.Material):Void;

	@:native("GetMaterial")
	public function getMaterial():godot.Material;

	@:native("SetUseParentMaterial")
	public function setUseParentMaterial(enable:Bool):Void;

	@:native("GetUseParentMaterial")
	public function getUseParentMaterial():Bool;

	/**		
		If `enable` is `true`, this node will receive `godot.CanvasItem.notificationLocalTransformChanged` when its local transform changes.
	**/
	@:native("SetNotifyLocalTransform")
	public function setNotifyLocalTransform(enable:Bool):Void;

	/**		
		Returns `true` if local transform notifications are communicated to children.
	**/
	@:native("IsLocalTransformNotificationEnabled")
	public function isLocalTransformNotificationEnabled():Bool;

	/**		
		If `enable` is `true`, this node will receive `godot.CanvasItem.notificationTransformChanged` when its global transform changes.
	**/
	@:native("SetNotifyTransform")
	public function setNotifyTransform(enable:Bool):Void;

	/**		
		Returns `true` if global transform notifications are communicated to children.
	**/
	@:native("IsTransformNotificationEnabled")
	public function isTransformNotificationEnabled():Bool;

	/**		
		Forces the transform to update. Transform changes in physics are not instant for performance reasons. Transforms are accumulated and then set. Use this if you need an up-to-date transform when doing physics operations.
	**/
	@:native("ForceUpdateTransform")
	public function forceUpdateTransform():Void;

	/**		
		Assigns `screen_point` as this node's new local transform.
	**/
	@:native("MakeCanvasPositionLocal")
	public function makeCanvasPositionLocal(screenPoint:godot.Vector2):godot.Vector2;

	/**		
		Transformations issued by `event`'s inputs are applied in local space instead of global space.
	**/
	@:native("MakeInputLocal")
	public function makeInputLocal(event:godot.InputEvent):godot.InputEvent;
}
