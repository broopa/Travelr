//
//  Tip.swift
//  Travlr
//
//  Created by Ian Albahae on 7/2/22.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
