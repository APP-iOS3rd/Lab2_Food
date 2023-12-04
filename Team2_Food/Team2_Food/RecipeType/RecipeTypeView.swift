//
//  RecipeTypeView.swift
//  Team2_Food
//
//  Created by 노주영 on 2023/12/04.
//

import SwiftUI

struct Recipe: Identifiable {
    let id = UUID()
    let image: String
    let title: String
}

struct RecipeTypeView: View {
    let recipeTypes: [Recipe] = [
        .init(image: "soup", title: "국"),
        .init(image: "sideDish", title: "반찬"),
        .init(image: "rice", title: "밥"),
        .init(image: "course", title: "일품"),
        .init(image: "dessert", title: "후식")
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Category")
                    .font(.largeTitle)
                    .bold()
                
                ScrollView {
                    ForEach(recipeTypes) { type in
                        Button {
                           
                        } label: {
                            HStack {
                                Spacer()
                                
                                NavigationLink {
                                    RecipeInformationView(recipeType: type.title)
                                } label: {
                                    VStack {
                                        Image(type.image)
                                        
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.width/2)
                                            .padding()
                                        
                                        Text(type.title)
                                            .font(.system(size: 30))
                                            .foregroundStyle(.black)
                                    }
                                }
                                Spacer()
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .padding()
        }
    }
}

#Preview {
    RecipeTypeView()
}
