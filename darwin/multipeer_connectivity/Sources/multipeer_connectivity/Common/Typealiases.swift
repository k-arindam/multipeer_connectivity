//
//  Typealiases.swift
//  multipeer_connectivity
//
//  Created by Arindam Karmakar on 25/05/25.
//

import Foundation

internal typealias MCPEnum = Codable & Hashable & CaseIterable

internal typealias JSON = [String: Any]

internal typealias VoidCallback = () -> Void

internal typealias JSONCallback = (JSON?) -> Void
