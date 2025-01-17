//
//  Player.swift
//  KingsCup (iOS)
//
//  Created by Sherry Xu on 2021-12-28.
//

import Foundation
import UIKit

public class Player: CustomStringConvertible {
    public let name: String
    public var has_two: Bool = false
    public var num_of_eight: Int = 0
    public var isPlaying: Bool = false
    
    public init(name: String) {
        self.name = name
    }
    
    public var description: String {
        return "Player \(name) is " + (isPlaying ? "" : "NOT ") + "playing"
    }
}
