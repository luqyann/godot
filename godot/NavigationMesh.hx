// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A navigation mesh is a collection of polygons that define which areas of an environment are traversable to aid agents in pathfinding through complicated spaces.
**/
@:libType
@:csNative
@:native("Godot.NavigationMesh")
@:autoBuild(godot.Godot.buildUserClass())
extern class NavigationMesh extends godot.Resource {
	/**		
		The position offset applied to the `godot.NavigationMesh.filterBakingAabb` `godot.AABB`.
	**/
	@:native("FilterBakingAabbOffset")
	public var filterBakingAabbOffset:godot.Vector3;

	/**		
		If the baking `godot.AABB` has a volume the navigation mesh baking will be restricted to its enclosing area.
	**/
	@:native("FilterBakingAabb")
	public var filterBakingAabb:godot.AABB;

	/**		
		If `true`, marks walkable spans as not walkable if the clearance above the span is less than `godot.NavigationMesh.agentHeight`.
	**/
	@:native("FilterWalkableLowHeightSpans")
	public var filterWalkableLowHeightSpans:Bool;

	/**		
		If `true`, marks spans that are ledges as non-walkable.
	**/
	@:native("FilterLedgeSpans")
	public var filterLedgeSpans:Bool;

	/**		
		If `true`, marks non-walkable spans as walkable if their maximum is within `godot.NavigationMesh.agentMaxClimb` of a walkable neighbor.
	**/
	@:native("FilterLowHangingObstacles")
	public var filterLowHangingObstacles:Bool;

	/**		
		The maximum distance the detail mesh surface should deviate from heightfield, in cell unit.
	**/
	@:native("DetailSampleMaxError")
	public var detailSampleMaxError:Single;

	/**		
		The sampling distance to use when generating the detail mesh, in cell unit.
	**/
	@:native("DetailSampleDistance")
	public var detailSampleDistance:Single;

	/**		
		The maximum number of vertices allowed for polygons generated during the contour to polygon conversion process.
	**/
	@:native("PolygonVertsPerPoly")
	public var polygonVertsPerPoly:Single;

	/**		
		The maximum distance a simplfied contour's border edges should deviate the original raw contour.
	**/
	@:native("EdgeMaxError")
	public var edgeMaxError:Single;

	/**		
		The maximum allowed length for contour edges along the border of the mesh.
		
		Note: While baking, this value will be rounded up to the nearest multiple of `godot.NavigationMesh.cellSize`.
	**/
	@:native("EdgeMaxLength")
	public var edgeMaxLength:Single;

	/**		
		Any regions with a size smaller than this will be merged with larger regions if possible.
		
		Note: This value will be squared to calculate the number of cells. For example, a value of 20 will set the number of cells to 400.
	**/
	@:native("RegionMergeSize")
	public var regionMergeSize:Single;

	/**		
		The minimum size of a region for it to be created.
		
		Note: This value will be squared to calculate the minimum number of cells allowed to form isolated island areas. For example, a value of 8 will set the number of cells to 64.
	**/
	@:native("RegionMinSize")
	public var regionMinSize:Single;

	/**		
		The maximum slope that is considered walkable, in degrees.
	**/
	@:native("AgentMaxSlope")
	public var agentMaxSlope:Single;

	/**		
		The minimum ledge height that is considered to still be traversable.
		
		Note: While baking, this value will be rounded down to the nearest multiple of `godot.NavigationMesh.cellHeight`.
	**/
	@:native("AgentMaxClimb")
	public var agentMaxClimb:Single;

	/**		
		The distance to erode/shrink the walkable area of the heightfield away from obstructions.
		
		Note: While baking, this value will be rounded up to the nearest multiple of `godot.NavigationMesh.cellSize`.
	**/
	@:native("AgentRadius")
	public var agentRadius:Single;

	/**		
		The minimum floor to ceiling height that will still allow the floor area to be considered walkable.
		
		Note: While baking, this value will be rounded up to the nearest multiple of `godot.NavigationMesh.cellHeight`.
	**/
	@:native("AgentHeight")
	public var agentHeight:Single;

	/**		
		The Y axis cell size to use for fields.
	**/
	@:native("CellHeight")
	public var cellHeight:Single;

	/**		
		The XZ plane cell size to use for fields.
	**/
	@:native("CellSize")
	public var cellSize:Single;

	/**		
		The name of the group to scan for geometry.
		
		Only used when `godot.NavigationMesh.geometrySourceGeometryMode` is `godot.NavigationMesh_SourceGeometryMode.groupsWithChildren` or `godot.NavigationMesh_SourceGeometryMode.groupsExplicit`.
	**/
	@:native("GeometrySourceGroupName")
	public var geometrySourceGroupName:std.String;

	/**		
		The source of the geometry used when baking. See `godot.NavigationMesh_SourceGeometryMode` for possible values.
	**/
	@:native("GeometrySourceGeometryMode")
	public var geometrySourceGeometryMode:godot.NavigationMesh_SourceGeometryMode;

	/**		
		The physics layers to scan for static colliders.
		
		Only used when `godot.NavigationMesh.geometryParsedGeometryType` is `godot.NavigationMesh_ParsedGeometryType.staticColliders` or `godot.NavigationMesh_ParsedGeometryType.both`.
	**/
	@:native("GeometryCollisionMask")
	public var geometryCollisionMask:UInt;

	/**		
		Determines which type of nodes will be parsed as geometry. See `godot.NavigationMesh_ParsedGeometryType` for possible values.
	**/
	@:native("GeometryParsedGeometryType")
	public var geometryParsedGeometryType:godot.NavigationMesh_ParsedGeometryType;

	/**		
		Partitioning algorithm for creating the navigation mesh polys. See `godot.NavigationMesh_SamplePartitionTypeEnum` for possible values.
	**/
	@:native("SamplePartitionType")
	public var samplePartitionType:godot.NavigationMesh_SamplePartitionTypeEnum;

	@:native("Polygons")
	public var polygons:godot.collections.Array;

	@:native("Vertices")
	public var vertices:cs.NativeArray<godot.Vector3>;

	@:native("new")
	public function new():Void;

	@:native("SetSamplePartitionType")
	public function setSamplePartitionType(samplePartitionType:godot.NavigationMesh_SamplePartitionTypeEnum):Void;

	@:native("GetSamplePartitionType")
	public function getSamplePartitionType():godot.NavigationMesh_SamplePartitionTypeEnum;

	@:native("SetParsedGeometryType")
	public function setParsedGeometryType(geometryType:godot.NavigationMesh_ParsedGeometryType):Void;

	@:native("GetParsedGeometryType")
	public function getParsedGeometryType():godot.NavigationMesh_ParsedGeometryType;

	@:native("SetCollisionMask")
	public function setCollisionMask(mask:UInt):Void;

	@:native("GetCollisionMask")
	public function getCollisionMask():UInt;

	/**		
		If `value` is `true`, sets the specified `bit` in the `godot.NavigationMesh.geometryCollisionMask`.
		
		If `value` is `false`, clears the specified `bit` in the `godot.NavigationMesh.geometryCollisionMask`.
	**/
	@:native("SetCollisionMaskBit")
	public function setCollisionMaskBit(bit:Int, value:Bool):Void;

	/**		
		Returns whether the specified `bit` of the `godot.NavigationMesh.geometryCollisionMask` is set.
	**/
	@:native("GetCollisionMaskBit")
	public function getCollisionMaskBit(bit:Int):Bool;

	@:native("SetSourceGeometryMode")
	public function setSourceGeometryMode(mask:godot.NavigationMesh_SourceGeometryMode):Void;

	@:native("GetSourceGeometryMode")
	public function getSourceGeometryMode():godot.NavigationMesh_SourceGeometryMode;

	@:native("SetSourceGroupName")
	public function setSourceGroupName(mask:std.String):Void;

	@:native("GetSourceGroupName")
	public function getSourceGroupName():std.String;

	@:native("SetCellSize")
	public function setCellSize(cellSize:Single):Void;

	@:native("GetCellSize")
	public function getCellSize():Single;

	@:native("SetCellHeight")
	public function setCellHeight(cellHeight:Single):Void;

	@:native("GetCellHeight")
	public function getCellHeight():Single;

	@:native("SetAgentHeight")
	public function setAgentHeight(agentHeight:Single):Void;

	@:native("GetAgentHeight")
	public function getAgentHeight():Single;

	@:native("SetAgentRadius")
	public function setAgentRadius(agentRadius:Single):Void;

	@:native("GetAgentRadius")
	public function getAgentRadius():Single;

	@:native("SetAgentMaxClimb")
	public function setAgentMaxClimb(agentMaxClimb:Single):Void;

	@:native("GetAgentMaxClimb")
	public function getAgentMaxClimb():Single;

	@:native("SetAgentMaxSlope")
	public function setAgentMaxSlope(agentMaxSlope:Single):Void;

	@:native("GetAgentMaxSlope")
	public function getAgentMaxSlope():Single;

	@:native("SetRegionMinSize")
	public function setRegionMinSize(regionMinSize:Single):Void;

	@:native("GetRegionMinSize")
	public function getRegionMinSize():Single;

	@:native("SetRegionMergeSize")
	public function setRegionMergeSize(regionMergeSize:Single):Void;

	@:native("GetRegionMergeSize")
	public function getRegionMergeSize():Single;

	@:native("SetEdgeMaxLength")
	public function setEdgeMaxLength(edgeMaxLength:Single):Void;

	@:native("GetEdgeMaxLength")
	public function getEdgeMaxLength():Single;

	@:native("SetEdgeMaxError")
	public function setEdgeMaxError(edgeMaxError:Single):Void;

	@:native("GetEdgeMaxError")
	public function getEdgeMaxError():Single;

	@:native("SetVertsPerPoly")
	public function setVertsPerPoly(vertsPerPoly:Single):Void;

	@:native("GetVertsPerPoly")
	public function getVertsPerPoly():Single;

	@:native("SetDetailSampleDistance")
	public function setDetailSampleDistance(detailSampleDist:Single):Void;

	@:native("GetDetailSampleDistance")
	public function getDetailSampleDistance():Single;

	@:native("SetDetailSampleMaxError")
	public function setDetailSampleMaxError(detailSampleMaxError:Single):Void;

	@:native("GetDetailSampleMaxError")
	public function getDetailSampleMaxError():Single;

	@:native("SetFilterLowHangingObstacles")
	public function setFilterLowHangingObstacles(filterLowHangingObstacles:Bool):Void;

	@:native("GetFilterLowHangingObstacles")
	public function getFilterLowHangingObstacles():Bool;

	@:native("SetFilterLedgeSpans")
	public function setFilterLedgeSpans(filterLedgeSpans:Bool):Void;

	@:native("GetFilterLedgeSpans")
	public function getFilterLedgeSpans():Bool;

	@:native("SetFilterWalkableLowHeightSpans")
	public function setFilterWalkableLowHeightSpans(filterWalkableLowHeightSpans:Bool):Void;

	@:native("GetFilterWalkableLowHeightSpans")
	public function getFilterWalkableLowHeightSpans():Bool;

	@:native("SetFilterBakingAabb")
	public function setFilterBakingAabb(bakingAabb:godot.AABB):Void;

	@:native("GetFilterBakingAabb")
	public function getFilterBakingAabb():godot.AABB;

	@:native("SetFilterBakingAabbOffset")
	public function setFilterBakingAabbOffset(bakingAabbOffset:godot.Vector3):Void;

	@:native("GetFilterBakingAabbOffset")
	public function getFilterBakingAabbOffset():godot.Vector3;

	/**		
		Sets the vertices that can be then indexed to create polygons with the `godot.NavigationMesh.addPolygon` method.
	**/
	@:native("SetVertices")
	public function setVertices(vertices:HaxeArray<godot.Vector3>):Void;

	/**		
		Returns a `godot.Vector3` containing all the vertices being used to create the polygons.
	**/
	public extern inline function getVertices():std.Array<godot.Vector3> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetVertices()", this));
	}

	/**		
		Adds a polygon using the indices of the vertices you get when calling `godot.NavigationMesh.getVertices`.
	**/
	@:native("AddPolygon")
	public function addPolygon(polygon:HaxeArray<Int>):Void;

	/**		
		Returns the number of polygons in the navigation mesh.
	**/
	@:native("GetPolygonCount")
	public function getPolygonCount():Int;

	/**		
		Returns a `Int` containing the indices of the vertices of a created polygon.
	**/
	public extern inline function getPolygon(idx:Int):std.Array<Int> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetPolygon({1})", this, idx));
	}

	/**		
		Clears the array of polygons, but it doesn't clear the array of vertices.
	**/
	@:native("ClearPolygons")
	public function clearPolygons():Void;

	/**		
		Initializes the navigation mesh by setting the vertices and indices according to a `godot.Mesh`.
	**/
	@:native("CreateFromMesh")
	public function createFromMesh(mesh:godot.Mesh):Void;
}
