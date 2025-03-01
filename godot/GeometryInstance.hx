// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Base node for geometry-based visual instances. Shares some common functionality like visibility and custom materials.
**/
@:libType
@:csNative
@:native("Godot.GeometryInstance")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class GeometryInstance extends godot.VisualInstance {
	/**		
		The GeometryInstance's max LOD margin.
		
		Note: This property currently has no effect.
	**/
	@:native("LodMaxHysteresis")
	public var lodMaxHysteresis:Single;

	/**		
		The GeometryInstance's max LOD distance.
		
		Note: This property currently has no effect.
	**/
	@:native("LodMaxDistance")
	public var lodMaxDistance:Single;

	/**		
		The GeometryInstance's min LOD margin.
		
		Note: This property currently has no effect.
	**/
	@:native("LodMinHysteresis")
	public var lodMinHysteresis:Single;

	/**		
		The GeometryInstance's min LOD distance.
		
		Note: This property currently has no effect.
	**/
	@:native("LodMinDistance")
	public var lodMinDistance:Single;

	/**		
		Scale factor for the generated baked lightmap. Useful for adding detail to certain mesh instances.
	**/
	@:native("LightmapScale")
	public var lightmapScale:godot.GeometryInstance_LightmapScaleEnum;

	/**		
		When disabled, the mesh will be taken into account when computing indirect lighting, but the resulting lightmap will not be saved. Useful for emissive only materials or shadow casters.
	**/
	@:native("GenerateLightmap")
	public var generateLightmap:Bool;

	/**		
		If `true`, this GeometryInstance will be used when baking lights using a `godot.GIProbe` or `godot.BakedLightmap`.
	**/
	@:native("UseInBakedLight")
	public var useInBakedLight:Bool;

	/**		
		The extra distance added to the GeometryInstance's bounding box (`godot.AABB`) to increase its cull box.
	**/
	@:native("ExtraCullMargin")
	public var extraCullMargin:Single;

	/**		
		The selected shadow casting flag. See `godot.GeometryInstance_ShadowCastingSetting` for possible values.
	**/
	@:native("CastShadow")
	public var castShadow:godot.GeometryInstance_ShadowCastingSetting;

	/**		
		The material overlay for the whole geometry.
		
		If a material is assigned to this property, it will be rendered on top of any other active material for all the surfaces.
	**/
	@:native("MaterialOverlay")
	public var materialOverlay:godot.Material;

	/**		
		The material override for the whole geometry.
		
		If a material is assigned to this property, it will be used instead of any material set in any material slot of the mesh.
	**/
	@:native("MaterialOverride")
	public var materialOverride:godot.Material;

	@:native("SetMaterialOverride")
	public function setMaterialOverride(material:godot.Material):Void;

	@:native("GetMaterialOverride")
	public function getMaterialOverride():godot.Material;

	@:native("SetMaterialOverlay")
	public function setMaterialOverlay(material:godot.Material):Void;

	@:native("GetMaterialOverlay")
	public function getMaterialOverlay():godot.Material;

	/**		
		Sets the `godot.GeometryInstance_Flags` specified. See `godot.GeometryInstance_Flags` for options.
	**/
	@:native("SetFlag")
	public function setFlag(flag:godot.GeometryInstance_Flags, value:Bool):Void;

	/**		
		Returns the `godot.GeometryInstance_Flags` that have been set for this object.
	**/
	@:native("GetFlag")
	public function getFlag(flag:godot.GeometryInstance_Flags):Bool;

	@:native("SetCastShadowsSetting")
	public function setCastShadowsSetting(shadowCastingSetting:godot.GeometryInstance_ShadowCastingSetting):Void;

	@:native("GetCastShadowsSetting")
	public function getCastShadowsSetting():godot.GeometryInstance_ShadowCastingSetting;

	@:native("SetGenerateLightmap")
	public function setGenerateLightmap(enabled:Bool):Void;

	@:native("GetGenerateLightmap")
	public function getGenerateLightmap():Bool;

	@:native("SetLightmapScale")
	public function setLightmapScale(scale:godot.GeometryInstance_LightmapScaleEnum):Void;

	@:native("GetLightmapScale")
	public function getLightmapScale():godot.GeometryInstance_LightmapScaleEnum;

	@:native("SetLodMaxHysteresis")
	public function setLodMaxHysteresis(mode:Single):Void;

	@:native("GetLodMaxHysteresis")
	public function getLodMaxHysteresis():Single;

	@:native("SetLodMaxDistance")
	public function setLodMaxDistance(mode:Single):Void;

	@:native("GetLodMaxDistance")
	public function getLodMaxDistance():Single;

	@:native("SetLodMinHysteresis")
	public function setLodMinHysteresis(mode:Single):Void;

	@:native("GetLodMinHysteresis")
	public function getLodMinHysteresis():Single;

	@:native("SetLodMinDistance")
	public function setLodMinDistance(mode:Single):Void;

	@:native("GetLodMinDistance")
	public function getLodMinDistance():Single;

	@:native("SetExtraCullMargin")
	public function setExtraCullMargin(margin:Single):Void;

	@:native("GetExtraCullMargin")
	public function getExtraCullMargin():Single;

	/**		
		Overrides the bounding box of this node with a custom one. To remove it, set an `godot.AABB` with all fields set to zero.
	**/
	@:native("SetCustomAabb")
	public function setCustomAabb(aabb:godot.AABB):Void;
}
