//
//  APIModel.swift
//  Team2_Food
//
//  Created by 노주영 on 2023/12/04.
//

import Foundation

struct Result: Decodable {
    let cookrcp01: RecipeDetails
    
    enum CodingKeys: String, CodingKey {
        case cookrcp01 = "COOKRCP01"
    }
}
// 레시피 세부 정보 모델
struct RecipeDetails: Decodable {
    let total_count: String
    let row: [RecipeRow]
}

// 레시피 한 행 모델
struct RecipeRow: Decodable {
    let RCP_SEQ: String
    let RCP_NM: String
    let RCP_WAY2: String
    let RCP_PAT2: String
    let INFO_WGT: String
}
