//
//  PostDTO.swift
//  TestNetworkManager
//
//  Created by Serhan Khan on 14/03/2025.
//
import Foundation
/// A struct representing the data transfer object for a post.
struct PostDTO: Codable {
    var id: UUID = UUID()
    let userId: Int
    let title: String
    let body: String
    
//    enum CodingKeys: String, CodingKey {
//        case userId = "userId"
//        case title
//        case body
//    }
}
