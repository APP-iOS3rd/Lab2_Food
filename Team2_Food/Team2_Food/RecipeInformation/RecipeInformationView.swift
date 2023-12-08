//
//  RecipeInformationView.swift
//  Team2_Food
//
//  Created by 노주영 on 2023/12/04.
//

import SwiftUI

struct RecipeInformationView: View {
    @Environment(\.dismiss) private var dismiss
    
    @StateObject var viewModel = APIViewModel()
    
    var recipeType: String?
    
    var body: some View {
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
            
            Text(recipeType ?? "")
                .font(.title)
                .bold()
                .padding()
        }
        
        VStack {
            ScrollView {
                LazyVStack {
                    ForEach($viewModel.recipeList) { recipe in
                        NavigationLink {
                            RecipeDetailView(recipe: recipe.wrappedValue)
                        } label: {
                            HStack {
                                AsyncImage(url: URL(string: recipe.smollImage.wrappedValue)) {
                                    image in
                                    image
                                        .resizable()
                                        .cornerRadius(12.0)
                                        .frame(width: 80, height: 80)
                                } placeholder: {
                                    ProgressView()
                                        .frame(width: 80, height: 80)
                                }
                                
                                Text(recipe.rcpName.wrappedValue)
                                    .multilineTextAlignment(.leading)
                                    .font(.system(size: 25))
                                    .foregroundStyle(.black)
                                
                                Spacer()
                            }
                            .padding(.leading, 20)
                        }
                    }
                    
                    if !viewModel.isFinish {
                        ProgressView()
                            .onAppear {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    viewModel.foodData(type: recipeType ?? "")
                                }
                            }
                    }
                    
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .navigationBarBackButtonHidden()
    }
}

extension View {
    @ViewBuilder func isHidden(_ isHidden: Bool) -> some View {
        if isHidden {
            self.hidden()
        } else {
            self
        }
    }
}

#Preview {
    RecipeInformationView()
}

