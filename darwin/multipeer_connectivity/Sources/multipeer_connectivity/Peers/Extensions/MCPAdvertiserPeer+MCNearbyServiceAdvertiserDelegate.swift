//
//  MCPAdvertiserPeer+MCNearbyServiceAdvertiserDelegate.swift
//  multipeer_connectivity
//
//  Created by Arindam Karmakar on 25/05/25.
//

import MultipeerConnectivity

extension MCPAdvertiserPeer: MCNearbyServiceAdvertiserDelegate {
    func advertiser(_ advertiser: MCNearbyServiceAdvertiser, didReceiveInvitationFromPeer peerID: MCPeerID, withContext context: Data?, invitationHandler: @escaping (Bool, MCSession?) -> Void) {}
}
