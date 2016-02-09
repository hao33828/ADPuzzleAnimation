//
//  PuzzleAnimationConfiguration.swift
//  PuzzleAnimation
//
//  Created by Anton Domashnev on 2/7/16.
//  Copyright © 2016 Anton Domashnev. All rights reserved.
//

import Foundation
import CoreGraphics

/// Default piece animation delay for backward animation
let defaultBackwardPieceAnimationDelay = PuzzleAnimationDelay(minimumDelay: 0.1, maximumDelay: 0.5)

/// Default piece's group animation delay for backward animation
let defaultBackwardPieceGroupAnimationDelay = PuzzleAnimationDelay(minimumDelay: 0.25, maximumDelay: 0.4)

/// Default piece animation delay for forward animation
let defaultForwardPieceAnimationDelay = PuzzleAnimationDelay(minimumDelay: 0.3, maximumDelay: 1.0)

/// Default piece's group animation delay for forward animation
let defaultForwardPieceGroupAnimationDelay = PuzzleAnimationDelay(minimumDelay: 0.5, maximumDelay: 1.0)

/**
 *  Defines the structure that contains the information about delay
 */
struct PuzzleAnimationDelay {
    /// Defines the minimum delay between each group of pieces animation
    var minimumDelay: NSTimeInterval = 1
    
    /// Defines the minimum delay between each group of pieces animation
    var maximumDelay: NSTimeInterval = 1
}

/**
 *  Defines the structure that contains configurable parameters for puzzle animation
 */
struct PuzzleAnimationConfiguration {
    
    /// Defines the animation velocity. Higher velocity less animation duration
    var animationVelocity: NSTimeInterval = 1
    
    /// Defines the delay between each piece in piece's group animation
    var pieceAnimationDelay: PuzzleAnimationDelay = defaultForwardPieceAnimationDelay
    
    /// Defines the delay between each group of pieces animation
    var pieceGroupAnimationDelay: PuzzleAnimationDelay = defaultForwardPieceGroupAnimationDelay
    
    /// Defines the animation piece's scale
    var animationScale: Double = 2.5
    
    /// Each piece represents square and this value represents the number of pixels of square side
    var pieceSide: CGFloat = 40
}