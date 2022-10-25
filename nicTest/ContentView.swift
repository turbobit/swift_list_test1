//
//  ContentView.swift
//  nicTest
//
//  Created by 김윤성 on 2022/10/24.
//

import SwiftUI
struct location {
    var city = ""
    var weather = ""
}

struct ContentView: View {
    @ObservedObject var datas = ReadData()
    
    //루프 돌게 참조 https://developer.apple.com/forums/thread/128145
    var classesCollatedByTerm: [String : [Classes]] {
        Dictionary(grouping: datas.classes, by: {$0.Term})
    }
    var uniqueClassTerm : [String]{
        classesCollatedByTerm.map( {$0.key}).sorted()
    }
    init(){
    }
    var body: some View {
        NavigationView {
            List {
              ForEach(uniqueClassTerm, id: \.self) { term in
                Section(header: Text(term)) {
                    ForEach(self.classesCollatedByTerm[term]!) { data in
                        NavigationLink(
                            destination: Text("다음링크"), label: {
                                Text( data.Subject)
                                })
                    }
                }
              }
            }//List
    //        .listStyle()
            .navigationTitle("Class")
            .navigationBarTitleDisplayMode(.inline)
        }
        
        
        
    } // body
}// ContentView


/*
 Read JSON Data From File System in SwiftUI Mobile App
 https://medium.com/@nutanbhogendrasharma/read-json-data-from-file-system-in-swiftui-d054662000e

 "Term": "1주차",
 "Subject": "앱 사용 시나리오",
 "Description": "nil",
 "URL": "https://miro.com/app/board/uXjVPVZz2QU=/?moveToWidget=3458764533929815341&cot=14"
 */
struct Classes: Codable, Identifiable {
    enum CodingKeys: CodingKey {
        case Term
        case Subject
        case Description
        case URL
    }
    
    var id = UUID()
    var Term: String
    var Subject: String
    var Description: String
    var URL: String
}

class ReadData: ObservableObject  {
    @Published var classes = [Classes]()
    
    init(){
        loadData()
    }
    func loadData() {
        guard let url = Bundle.main.url(forResource: "classData", withExtension: "json")
            else {
                print("Json file not found")
                return
            }
        
        let data = try? Data(contentsOf: url)
        let classes = try? JSONDecoder().decode([Classes].self, from: data!)
        self.classes = classes!
    }
}
