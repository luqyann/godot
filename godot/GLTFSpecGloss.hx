// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Note: This class is only compiled in editor builds. Run-time glTF loading and saving is not available in exported projects. References to `godot.GLTFSpecGloss` within a script will cause an error in an exported project.
**/
@:libType
@:csNative
@:native("Godot.GLTFSpecGloss")
@:autoBuild(godot.Godot.buildUserClass())
extern class GLTFSpecGloss extends godot.Resource {
	@:native("SpecGlossImg")
	public var specGlossImg:godot.Image;

	@:native("SpecularFactor")
	public var specularFactor:godot.Color;

	@:native("GlossFactor")
	public var glossFactor:Single;

	@:native("DiffuseFactor")
	public var diffuseFactor:godot.Color;

	@:native("DiffuseImg")
	public var diffuseImg:godot.Image;

	@:native("new")
	public function new():Void;

	@:native("GetDiffuseImg")
	public function getDiffuseImg():godot.Image;

	@:native("SetDiffuseImg")
	public function setDiffuseImg(diffuseImg:godot.Image):Void;

	@:native("GetDiffuseFactor")
	public function getDiffuseFactor():godot.Color;

	@:native("SetDiffuseFactor")
	public function setDiffuseFactor(diffuseFactor:godot.Color):Void;

	@:native("GetGlossFactor")
	public function getGlossFactor():Single;

	@:native("SetGlossFactor")
	public function setGlossFactor(glossFactor:Single):Void;

	@:native("GetSpecularFactor")
	public function getSpecularFactor():godot.Color;

	@:native("SetSpecularFactor")
	public function setSpecularFactor(specularFactor:godot.Color):Void;

	@:native("GetSpecGlossImg")
	public function getSpecGlossImg():godot.Image;

	@:native("SetSpecGlossImg")
	public function setSpecGlossImg(specGlossImg:godot.Image):Void;
}
