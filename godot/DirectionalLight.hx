// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A directional light is a type of `godot.Light` node that models an infinite number of parallel rays covering the entire scene. It is used for lights with strong intensity that are located far away from the scene to model sunlight or moonlight. The worldspace location of the DirectionalLight transform (origin) is ignored. Only the basis is used to determine light direction.
**/
@:libType
@:csNative
@:native("Godot.DirectionalLight")
@:autoBuild(godot.Godot.buildUserClass())
extern class DirectionalLight extends godot.Light {
	/**		
		The maximum distance for shadow splits. Increasing this value will make directional shadows visible from further away, at the cost of lower overall shadow detail and performance (since more objects need to be included in the directional shadow rendering).
	**/
	@:native("DirectionalShadowMaxDistance")
	public var directionalShadowMaxDistance:Single;

	/**		
		Optimizes shadow rendering for detail versus movement. See `godot.DirectionalLight_ShadowDepthRange`.
	**/
	@:native("DirectionalShadowDepthRange")
	public var directionalShadowDepthRange:godot.DirectionalLight_ShadowDepthRange;

	/**		
		Amount of extra bias for shadow splits that are far away. If self-shadowing occurs only on the splits far away, increasing this value can fix them. This is ignored when `godot.DirectionalLight.directionalShadowMode` is `godot.DirectionalLight_ShadowMode.orthogonal`.
	**/
	@:native("DirectionalShadowBiasSplitScale")
	public var directionalShadowBiasSplitScale:Single;

	/**		
		Can be used to fix special cases of self shadowing when objects are perpendicular to the light.
	**/
	@:native("DirectionalShadowNormalBias")
	public var directionalShadowNormalBias:Single;

	/**		
		If `true`, shadow detail is sacrificed in exchange for smoother transitions between splits. Enabling shadow blend splitting also has a moderate performance cost. This is ignored when `godot.DirectionalLight.directionalShadowMode` is `godot.DirectionalLight_ShadowMode.orthogonal`.
	**/
	@:native("DirectionalShadowBlendSplits")
	public var directionalShadowBlendSplits:Bool;

	/**		
		The distance from shadow split 2 to split 3. Relative to `godot.DirectionalLight.directionalShadowMaxDistance`. Only used when `godot.DirectionalLight.directionalShadowMode` is `godot.DirectionalLight_ShadowMode.parallel4Splits`.
	**/
	@:native("DirectionalShadowSplit3")
	public var directionalShadowSplit3:Single;

	/**		
		The distance from shadow split 1 to split 2. Relative to `godot.DirectionalLight.directionalShadowMaxDistance`. Only used when `godot.DirectionalLight.directionalShadowMode` is `godot.DirectionalLight_ShadowMode.parallel2Splits` or `godot.DirectionalLight_ShadowMode.parallel4Splits`.
	**/
	@:native("DirectionalShadowSplit2")
	public var directionalShadowSplit2:Single;

	/**		
		The distance from camera to shadow split 1. Relative to `godot.DirectionalLight.directionalShadowMaxDistance`. Only used when `godot.DirectionalLight.directionalShadowMode` is `godot.DirectionalLight_ShadowMode.parallel2Splits` or `godot.DirectionalLight_ShadowMode.parallel4Splits`.
	**/
	@:native("DirectionalShadowSplit1")
	public var directionalShadowSplit1:Single;

	/**		
		The light's shadow rendering algorithm. See `godot.DirectionalLight_ShadowMode`.
	**/
	@:native("DirectionalShadowMode")
	public var directionalShadowMode:godot.DirectionalLight_ShadowMode;

	@:native("new")
	public function new():Void;

	@:native("SetShadowMode")
	public function setShadowMode(mode:godot.DirectionalLight_ShadowMode):Void;

	@:native("GetShadowMode")
	public function getShadowMode():godot.DirectionalLight_ShadowMode;

	@:native("SetShadowDepthRange")
	public function setShadowDepthRange(mode:godot.DirectionalLight_ShadowDepthRange):Void;

	@:native("GetShadowDepthRange")
	public function getShadowDepthRange():godot.DirectionalLight_ShadowDepthRange;

	@:native("SetBlendSplits")
	public function setBlendSplits(enabled:Bool):Void;

	@:native("IsBlendSplitsEnabled")
	public function isBlendSplitsEnabled():Bool;
}
