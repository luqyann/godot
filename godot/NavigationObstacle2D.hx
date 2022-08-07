// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
2D obstacle used in navigation for collision avoidance. The obstacle needs navigation data to work correctly. This can be done by having the obstacle as a child of a `godot.Navigation2D` node, or using `godot.NavigationObstacle2D.setNavigation`. `godot.NavigationObstacle2D` is physics safe.

Note: Obstacles are intended as a last resort option for constantly moving objects that cannot be (re)baked to a navigation mesh efficiently.
**/
@:libType
@:csNative
@:native("Godot.NavigationObstacle2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class NavigationObstacle2D extends godot.Node {
	/**		
		The radius of the agent. Used only if `godot.NavigationObstacle2D.estimateRadius` is set to `false`.
	**/
	@:native("Radius")
	public var radius:Single;

	/**		
		Enables radius estimation algorithm which uses parent's collision shapes to determine the obstacle radius.
	**/
	@:native("EstimateRadius")
	public var estimateRadius:Bool;

	@:native("new")
	public function new():Void;

	/**		
		Returns the `godot.RID` of this obstacle on the `godot.Navigation2DServer`.
	**/
	@:native("GetRid")
	public function getRid():godot.RID;

	/**		
		Sets the `godot.Navigation2D` node used by the obstacle. Useful when you don't want to make the obstacle a child of a `godot.Navigation2D` node.
	**/
	@:native("SetNavigation")
	public function setNavigation(navigation:godot.Node):Void;

	/**		
		Returns the `godot.Navigation2D` node that the obstacle is using for its navigation system.
	**/
	@:native("GetNavigation")
	public function getNavigation():godot.Node;

	@:native("SetEstimateRadius")
	public function setEstimateRadius(estimateRadius:Bool):Void;

	@:native("IsRadiusEstimated")
	public function isRadiusEstimated():Bool;

	@:native("SetRadius")
	public function setRadius(radius:Single):Void;

	@:native("GetRadius")
	public function getRadius():Single;
}
