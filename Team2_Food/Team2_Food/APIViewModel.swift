//
//  APIViewModel.swift
//  Team2_Food
//
//  Created by 노주영 on 2023/12/04.
//

import Foundation

class APIViewModel: ObservableObject {
    static let shared = APIViewModel()

    @Published var posts: Result?
    
    var apiKey: String? {
        get {
            let keyfilename = "ApiKeys"
            let api_key = "API_KEY"
            
            // 생성한 .plist 파일 경로 불러오기
            guard let filePath = Bundle.main.path(forResource: keyfilename, ofType: "plist") else {
                fatalError("Couldn't find file '\(keyfilename).plist'")
            }
            
            // .plist 파일 내용을 딕셔너리로 받아오기
            let plist = NSDictionary(contentsOfFile: filePath)
            
            // 딕셔너리에서 키 찾기
            guard let value = plist?.object(forKey: api_key) as? String else {
                fatalError("Couldn't find key '\(api_key)'")
            }
            
            return value
        }
    }
    
    
    //결과값
    func foodData(){
        guard let apiKey = apiKey else { return }
        
         let urlString = "https://openapi.foodsafetykorea.go.kr/api/\(apiKey)/COOKRCP01/json/1/5"

         guard let url = URL(string: urlString) else { return }

         let session = URLSession(configuration: .default)

         let task = session.dataTask(with: url){ data, response, error in
             if let error = error {
                 print(error.localizedDescription)
                 return
             }

             guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                 // 정상적으로 값이 오지 않았을 때 처리
//                 self.posts = []
                 print("포스팅되지 않음")
                 return
             }

             guard let data = data else {
                 print("No data received")
                 return
             }

//                let str = String(decoding: data, as: UTF8.self)
//                print(str)
             do {

                 let json = try JSONDecoder().decode(Result.self, from: data)
                 //애플리케이션이 블록 객체 형태로 작업을 제출할 수 있는 FIFO 큐
                 DispatchQueue.main.async {
                     self.posts = json
                     print(self.posts?.cookrcp01.row)
                 }
             } catch let error {
                 print(error.localizedDescription)
             }

         }
         task.resume()
    }

}
