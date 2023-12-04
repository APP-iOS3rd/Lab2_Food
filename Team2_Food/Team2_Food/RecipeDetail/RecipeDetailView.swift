//
//  RecipeDetailView.swift
//  Team2_Food
//
//  Created by 노주영 on 2023/12/04.
//

import SwiftUI

struct RecipeDetailView: View {
    @Environment(\.dismiss) private var dismiss
    
    let recipe: RecipeRow?
    
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Button {
                        dismiss()
                    } label: {
                        Text("<")
                            .font(.largeTitle)
                            .foregroundStyle(.black)
                    }
                    .padding()
                    
                    Spacer()
                }
                
                Text(recipe?.rcpName ?? "")
                    .font(.largeTitle)
                    .bold()
                    .padding()
            }
            
            
            GeometryReader { geometry in
                LazyVStack {
                    ScrollView {
                        AsyncImage(url: URL(string: recipe?.bigImage ?? "")) {
                            image in
                            image
                                .resizable()
                                .cornerRadius(12.0)
                                .frame(width: UIScreen.main.bounds.width - 40, height: UIScreen.main.bounds.width/2)
                        } placeholder: {
                            ProgressView()
                                .frame(width: 80, height: 80)
                        }
                        
                        VStack(alignment: .leading) {
                            Text("요리 종류")
                                .multilineTextAlignment(.leading)
                                .font(.system(size: 20))
                                .foregroundStyle(.black)
                                .bold()
                            
                            HStack {
                                Text(recipe?.rcpPat2 ?? "")
                                    .padding(.vertical, 5)
                                    .multilineTextAlignment(.leading)
                                    .font(.system(size: 15))
                                    .foregroundStyle(.black)
                                
                                Spacer()
                            }
                            .padding(.bottom, 10)
                            
                            
                            Text("조리 방법")
                                .multilineTextAlignment(.leading)
                                .font(.system(size: 20))
                                .foregroundStyle(.black)
                                .bold()
                            
                            HStack {
                                Text(recipe?.rcpWay2 ?? "")
                                    .padding(.vertical, 5)
                                    .multilineTextAlignment(.leading)
                                    .font(.system(size: 15))
                                    .foregroundStyle(.black)
                                
                                Spacer()
                            }
                            .padding(.bottom, 10)
                            
                            
                            Text("재료")
                                .multilineTextAlignment(.leading)
                                .font(.system(size: 20))
                                .foregroundStyle(.black)
                                .bold()
                            
                            HStack {
                                Text(recipe?.materialInformation ?? "")
                                    .padding(.vertical, 5)
                                    .font(.system(size: 15))
                                    .foregroundStyle(.black)
                                    .frame(width: UIScreen.main.bounds.width - 40)
                                
                                Spacer()
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width - 40)
                        .padding(20)
                        
                        HStack{
                            Text("조리 순서")
                                .font(.system(size: 20))
                                .foregroundStyle(.black)
                                .bold()
                            
                            Spacer()
                        }
                        .padding(.horizontal, 20)
                        
                        ForEach(1..<21) { i in
                            let index = self.chooseRecipeMenual(i)
                            
                            if index != ("", "") {
                                VStack(alignment: .leading) {
                                    AsyncImage(url: URL(string: index.1)) {
                                        image in
                                        image
                                            .resizable()
                                            .cornerRadius(12.0)
                                            .frame(width: UIScreen.main.bounds.width - 40, height: UIScreen.main.bounds.width/2)
                                    } placeholder: {
                                        ProgressView()
                                            .frame(width: UIScreen.main.bounds.width - 40, height: UIScreen.main.bounds.width/2)
                                    }
                                    .padding(.bottom, 10)
                                    
                                    Text(index.0)
                                        .padding(.vertical, 5)
                                        .multilineTextAlignment(.leading)
                                        .font(.system(size: 20))
                                        .foregroundStyle(.black)
                                }
                                .padding(10)
                            }
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: geometry.size.height)
                }
            }
            .navigationBarBackButtonHidden()
        }
    }
    
    func chooseRecipeMenual(_ i: Int) -> (String, String){
        switch i {
        case 1:
            return (recipe?.manual01 ?? "", recipe?.image01 ?? "")
        case 2:
            return (recipe?.manual02 ?? "", recipe?.image02 ?? "")
        case 3:
            return (recipe?.manual03 ?? "", recipe?.image03 ?? "")
        case 4:
            return (recipe?.manual04 ?? "", recipe?.image04 ?? "")
        case 5:
            return (recipe?.manual05 ?? "", recipe?.image05 ?? "")
        case 6:
            return (recipe?.manual06 ?? "", recipe?.image06 ?? "")
        case 7:
            return (recipe?.manual07 ?? "", recipe?.image07 ?? "")
        case 8:
            return (recipe?.manual08 ?? "", recipe?.image08 ?? "")
        case 9:
            return (recipe?.manual09 ?? "", recipe?.image09 ?? "")
        case 10:
            return (recipe?.manual10 ?? "", recipe?.image10 ?? "")
        case 11:
            return (recipe?.manual11 ?? "", recipe?.image11 ?? "")
        case 12:
            return (recipe?.manual12 ?? "", recipe?.image12 ?? "")
        case 13:
            return (recipe?.manual13 ?? "", recipe?.image13 ?? "")
        case 14:
            return (recipe?.manual14 ?? "", recipe?.image14 ?? "")
        case 15:
            return (recipe?.manual15 ?? "", recipe?.image15 ?? "")
        case 16:
            return (recipe?.manual16 ?? "", recipe?.image16 ?? "")
        case 17:
            return (recipe?.manual17 ?? "", recipe?.image17 ?? "")
        case 18:
            return (recipe?.manual18 ?? "", recipe?.image18 ?? "")
        case 19:
            return (recipe?.manual19 ?? "", recipe?.image19 ?? "")
        case 20:
            return (recipe?.manual20 ?? "", recipe?.image20 ?? "")
            
            
        default:
            return ("","")
        }
    }
}
