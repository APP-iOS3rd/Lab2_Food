//
//  RecipeInformationView.swift
//  Team2_Food
//
//  Created by 노주영 on 2023/12/04.
//

import SwiftUI

struct RecipeInformationView: View {
    
    private let samples: [APIModel] = [
        .init(image: "http://www.foodsafetykorea.go.kr/uploadimg/cook/10_00028_2.png", title: "새우두부계란찜"),
        .init(image: "http://www.foodsafetykorea.go.kr/uploadimg/cook/10_00031_2.png", title: "방울토마토 소박이"),
        .init(image: "http://www.foodsafetykorea.go.kr/uploadimg/cook/10_00032_2.png", title: "오이무침"),
        .init(image: "http://www.foodsafetykorea.go.kr/uploadimg/cook/10_00032_2.png", title: "오이무침"),
        .init(image: "http://www.foodsafetykorea.go.kr/uploadimg/cook/10_00032_2.png", title: "오이무침"),
        .init(image: "http://www.foodsafetykorea.go.kr/uploadimg/cook/10_00032_2.png", title: "오이무침"),
        .init(image: "http://www.foodsafetykorea.go.kr/uploadimg/cook/10_00032_2.png", title: "오이무침"),
        .init(image: "http://www.foodsafetykorea.go.kr/uploadimg/cook/10_00032_2.png", title: "오이무침"),
        .init(image: "http://www.foodsafetykorea.go.kr/uploadimg/cook/10_00032_2.png", title: "오이무침"),
        .init(image: "http://www.foodsafetykorea.go.kr/uploadimg/cook/10_00032_2.png", title: "오이무침"),
        .init(image: "http://www.foodsafetykorea.go.kr/uploadimg/cook/10_00032_2.png", title: "오이무침"),
        .init(image: "http://www.foodsafetykorea.go.kr/uploadimg/cook/10_00032_2.png", title: "오이무침"),
        .init(image: "http://www.foodsafetykorea.go.kr/uploadimg/cook/10_00032_2.png", title: "오이무침")
    
    ]
    
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Text("<")
                    .font(.largeTitle)
                    .foregroundStyle(.black)
            }
            .padding(.horizontal)

            Spacer()
            Text("Samples.Type")
                .font(.largeTitle)
                .bold()
            
            Spacer()
            Spacer()
        }
        
        ScrollView {
            ForEach(samples, id: \.self) { sample in
                HStack {
                    AsyncImage(url: URL(string: sample.image)!) {
                        image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(12.0)
                            .frame(width: 80, height: 80)
                    } placeholder: {
                        ProgressView()
                            .frame(width: 80, height: 80)
                    }
                    
                    Text(sample.title)
                        .font(.system(size: 25))
                    
                    Spacer()
                }
                .padding(.leading, 20)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    RecipeInformationView()
}

