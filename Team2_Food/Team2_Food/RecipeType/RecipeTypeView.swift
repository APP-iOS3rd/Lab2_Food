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
    private var gridItems = [GridItem(),GridItem(),GridItem()]
    
    var body: some View {
        NavigationView {
            ScrollView {
                Spacer()
                Text("레시피 분류")
                    .font(.title)
                    .bold()
                Divider()

                
                LazyVGrid(columns: gridItems,alignment: .center){
                    ForEach(recipeTypes) { type in
                        NavigationLink {
                            RecipeInformationView(recipeType: type.title)
                        } label: {
                            CellContent(image: type.image, title: type.title)
                        }
                    }
                    
                }
            }
            Spacer()
            
        }
    }
}


#Preview {
    RecipeTypeView()
}

struct CellContent: View{
    
    var image: String
    var title: String
    
    var body: some View{
        VStack(spacing: -10){
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width/6, height: UIScreen.main.bounds.width/6)
                .padding()
            
            Text(title)
                .font(.system(size: 17))
                .foregroundStyle(.black)
                .bold()
        }
        
    }
}
