//
//  RecipeTypeView.swift
//  Team2_Food
//
//  Created by 노주영 on 2023/12/04.
//

import SwiftUI

struct RecipeTypeView: View {
    let recipeTypes: [String] = ["국", "반찬", "밥", "찌개", "후식"]
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    ForEach(recipeTypes, id: \.self) { type in
                        Button {
                            // API 호출
                            // 예시 url http://openapi.foodsafetykorea.go.kr/api/acc5b06c942c4a94b3a1/COOKRCP01/json/1/15/RCP_PAT2=\(type)
                        } label: {
                            VStack {
                                Image(type)
                                    .resizable()
                                    .scaledToFit()
                                Text(type)
                            }
                        }
                    }
                }
                Spacer()
            }
            .padding()
            .navigationTitle("레시피 종류")
        }
    }
}

#Preview {
    RecipeTypeView()
}
