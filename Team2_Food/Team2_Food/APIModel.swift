//
//  APIModel.swift
//  Team2_Food
//
//  Created by 노주영 on 2023/12/04.
//

import Foundation

struct Result: Decodable {
    var cookrcp01: RecipeDetails
    
    enum CodingKeys: String, CodingKey {
        case cookrcp01 = "COOKRCP01"
    }
}
// 레시피 세부 정보 모델
struct RecipeDetails: Decodable {
    var total_count: String
    var row: [RecipeRow]
}

// 레시피 한 행 모델
struct RecipeRow: Decodable, Identifiable {
    let id = UUID()
    var rcpSeq: String
    var rcpName: String
    var rcpWay2: String
    var rcpPat2: String
    var smollImage: String
    var bigImage: String
    var materialInformation: String
    
    var manual01: String
    var image01: String
    var manual02: String
    var image02: String
    var manual03: String
    var image03: String
    var manual04: String
    var image04: String
    var manual05: String
    var image05: String
    var manual06: String
    var image06: String
    var manual07: String
    var image07: String
    var manual08: String
    var image08: String
    var manual09: String
    var image09: String
    var manual10: String
    var image10: String
    var manual11: String
    var image11: String
    var manual12: String
    var image12: String
    var manual13: String
    var image13: String
    var manual14: String
    var image14: String
    var manual15: String
    var image15: String
    var manual16: String
    var image16: String
    var manual17: String
    var image17: String
    var manual18: String
    var image18: String
    var manual19: String
    var image19: String
    var manual20: String
    var image20: String
    
    enum CodingKeys: String, CodingKey {
        case rcpSeq = "RCP_SEQ"                         //일련번호
        case rcpName = "RCP_NM"                         //요리명
        case rcpWay2 = "RCP_WAY2"                       //조리 방법
        case rcpPat2 = "RCP_PAT2"                       //요리 종류
        case smollImage = "ATT_FILE_NO_MAIN"            //이미지 소
        case bigImage = "ATT_FILE_NO_MK"                //이미지 대
        case materialInformation = "RCP_PARTS_DTLS"     //재료 정보
        
        //만드는 법
        case manual01 = "MANUAL01"
        case image01 = "MANUAL_IMG01"
        case manual02 = "MANUAL02"
        case image02 = "MANUAL_IMG02"
        case manual03 = "MANUAL03"
        case image03 = "MANUAL_IMG03"
        case manual04 = "MANUAL04"
        case image04 = "MANUAL_IMG04"
        case manual05 = "MANUAL05"
        case image05 = "MANUAL_IMG05"
        case manual06 = "MANUAL06"
        case image06 = "MANUAL_IMG06"
        case manual07 = "MANUAL07"
        case image07 = "MANUAL_IMG07"
        case manual08 = "MANUAL08"
        case image08 = "MANUAL_IMG08"
        case manual09 = "MANUAL09"
        case image09 = "MANUAL_IMG09"
        case manual10 = "MANUAL10"
        case image10 = "MANUAL_IMG10"
        case manual11 = "MANUAL11"
        case image11 = "MANUAL_IMG11"
        case manual12 = "MANUAL12"
        case image12 = "MANUAL_IMG12"
        case manual13 = "MANUAL13"
        case image13 = "MANUAL_IMG13"
        case manual14 = "MANUAL14"
        case image14 = "MANUAL_IMG14"
        case manual15 = "MANUAL15"
        case image15 = "MANUAL_IMG15"
        case manual16 = "MANUAL16"
        case image16 = "MANUAL_IMG16"
        case manual17 = "MANUAL17"
        case image17 = "MANUAL_IMG17"
        case manual18 = "MANUAL18"
        case image18 = "MANUAL_IMG18"
        case manual19 = "MANUAL19"
        case image19 = "MANUAL_IMG19"
        case manual20 = "MANUAL20"
        case image20 = "MANUAL_IMG20"
        
    }
}
