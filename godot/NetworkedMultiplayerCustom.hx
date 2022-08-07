// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A `godot.NetworkedMultiplayerPeer` implementation that can be used as a `godot.MultiplayerAPI.networkPeer` and controlled from a script.

Its purpose is to allow adding a new backend for the high-Level multiplayer API without needing to use GDNative.
**/
@:libType
@:csNative
@:native("Godot.NetworkedMultiplayerCustom")
@:autoBuild(godot.Godot.buildUserClass())
extern class NetworkedMultiplayerCustom extends godot.NetworkedMultiplayerPeer {
	/**
		`packet_generated` signal.
		
		Emitted when the local `MultiplayerAPI` generates a packet.
		Your script should take this packet and send it to the requested peer over the network (which should call `deliverPacket` with the data when it's received).
	**/
	public var onPacketGenerated(get, never):Signal<(peerId:Int, buffer:std.Array<cs.types.UInt8>, transferMode:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onPacketGenerated():Signal<(peerId:Int, buffer:std.Array<cs.types.UInt8>, transferMode:Int)->Void> {
		return new Signal(this, "packet_generated", Signal.SignalHandlerIntPoolByteArrayIntVoid.connectSignal, Signal.SignalHandlerIntPoolByteArrayIntVoid.disconnectSignal, Signal.SignalHandlerIntPoolByteArrayIntVoid.isSignalConnected);
	}

	@:native("new")
	public function new():Void;

	/**		
		Initialize the peer with the given `peer_id` (must be between 1 and 2147483647).
		
		Can only be called if the connection status is `godot.NetworkedMultiplayerPeer_ConnectionStatus.connecting`. See `godot.NetworkedMultiplayerCustom.setConnectionStatus`.
	**/
	@:native("Initialize")
	public function initialize(selfPeerId:Int):Void;

	/**		
		Set the max packet size that this peer can handle.
	**/
	@:native("SetMaxPacketSize")
	public function setMaxPacketSize(maxPacketSize:Int):Void;

	/**		
		Set the state of the connection. See `godot.NetworkedMultiplayerPeer_ConnectionStatus`.
		
		This will emit the `NetworkedMultiplayerPeer.connection_succeeded`, `NetworkedMultiplayerPeer.connection_failed` or `NetworkedMultiplayerPeer.server_disconnected` signals depending on the status and if the peer has the unique network id of `1`.
		
		You can only change to `godot.NetworkedMultiplayerPeer_ConnectionStatus.connecting` from `godot.NetworkedMultiplayerPeer_ConnectionStatus.disconnected` and to `godot.NetworkedMultiplayerPeer_ConnectionStatus.connected` from `godot.NetworkedMultiplayerPeer_ConnectionStatus.connecting`.
	**/
	@:native("SetConnectionStatus")
	public function setConnectionStatus(connectionStatus:godot.NetworkedMultiplayerPeer_ConnectionStatus):Void;

	/**		
		Deliver a packet to the local `godot.MultiplayerAPI`.
		
		When your script receives a packet from other peers over the network (originating from the `packet_generated` signal on the sending peer), passing it to this method will deliver it locally.
	**/
	@:native("DeliverPacket")
	public function deliverPacket(buffer:HaxeArray<cs.types.UInt8>, fromPeerId:Int):Void;
}
