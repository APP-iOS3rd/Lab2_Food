//
//  RecipeTypeView.swift
//  Team2_Food
//
//  Created by 노주영 on 2023/12/04.
//

import SwiftUI

struct RecipeTypeView: View {
<<<<<<< Updated upstream
    @StateObject var viewModel = APIViewModel()
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .onAppear {
            viewModel.foodData()
        }
=======
    @StateObject var foodAPI = APIViewModel.shared
    var body: some View {
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear(){
                
                foodAPI.foodData()
                
            }
>>>>>>> Stashed changes
    }
}

#Preview {
    RecipeTypeView()
}
