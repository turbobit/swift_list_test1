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
    
    init(){
////        let myAppearance = UINavigationBarAppearance()
//        myAppearance.titleTextAttributes = [
//            .foregroundColor : UIColor.black,
//                .font : UIFont.boldSystemFont(ofSize: 20)
//        ]
//        UINavigationBar.appearance().standardAppearance        = myAppearance
    }
    var body: some View {
        NavigationView {
            
            
            /*
             terr
             
             2차
             for classTitleData
                title = 1주차, 2추,3주
             
                for classData
                    if class.title = classTitleData.title {
                        
                    }
                    else
                    {
                     }
                }
             
             classTitleData             TET.VAL1('1주차')
             List(classes){
                 title in
                 Text("\(title)")
                     
             }
             */

            List {
                Section(header: Text("1주차 Class"))
                {
                    NavigationLink(
                        destination: Text("다음링크"), label: {
                                Text("ADS")
                            })
                    NavigationLink(
                        destination: Text("다음링"), label: {
                            Text("App Senario")
                        })
                    NavigationLink(
                        destination: Text("음링크"), label: {
                            Text("Persona")
                        })
                }
                
                Section(header: Text("2주차 Class"),
                        footer: Text("시나리오와 피드백"))
                {
                    NavigationLink(
                        destination: Text("다음링크"), label: {
                            Text("유사앱 찾기")
                            })
                    NavigationLink(
                        destination: Text("다음링"), label: {
                            Text("App SKetch")
                        })
                    NavigationLink(
                        destination: Text("음링크"), label: {
                            Text("Prototyping")
                        })
                }

                Section(header: Text("3주차 Class"),
                        footer: Text("발표와 동료 찾기")) {
                    NavigationLink(
                        destination: Text("다음링크"), label: {
                            Text("프로토 타입 발표")
                            })
                    NavigationLink(
                        destination: Text("다음링"), label: {
                            Text("팀 빌딩")
                        })
                    NavigationLink(
                        destination: Text("음링크"), label: {
                            Text("GitHub")
                        })
                }
                Section(header: Text("4주차 Class"),
                        footer: Text("시나리오와 피드백")) {
                    NavigationLink(
                        destination: Text("다음링크"), label: {
                            Text("프로토 타입 발표")
                            })
                    NavigationLink(
                        destination: Text("다음링"), label: {
                            Text("팀 빌딩")
                        })
                    NavigationLink(
                        destination: Text("음링크"), label: {
                            Text("GitHub")
                        })
                }
                Section(header: Text("5주차 Class"),
                        footer: Text("--------")) {
                    NavigationLink(
                        destination: Text("다음링크"), label: {
                            Text("프로토 타입 발표")
                            })
                    NavigationLink(
                        destination: Text("다음링"), label: {
                            Text("팀 빌딩")
                        })
                    NavigationLink(
                        destination: Text("음링크"), label: {
                            Text("GitHub")
                        })
                }
                Section(header: Text("6주차 Class"),
                        footer: Text("--------")) {
                    NavigationLink(
                        destination: Text("다음링크"), label: {
                            Text("프로토 타입 발표")
                            })
                    NavigationLink(
                        destination: Text("다음링"), label: {
                            Text("팀 빌딩")
                        })
                    NavigationLink(
                        destination: Text("음링크"), label: {
                            Text("GitHub")
                        })
                }
                
            }//List
    //        .listStyle()
            .navigationTitle("Class")
            .navigationBarTitleDisplayMode(.inline)
        }
        
        
        
    } // body
}// ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class tet{
    func val2(){
        
    }
    func val1(){
        // 1주차 혹은 2추가 같이 검색된거의 결과배열ㄹ 리
    }
    init()
    {
        
    }
}
