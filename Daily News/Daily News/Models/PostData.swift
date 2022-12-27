//
//  PostData.swift
//  Daily News
//
//  Created by Dev Salvi on 25/12/22.
//

import Foundation

struct Results : Decodable {
    let hits : [Post]
}

struct Post : Decodable, Identifiable{
    var id : String {
        return objectID
    }
    let objectID : String
    let points : Int
    let title : String
    let url : String?
}
