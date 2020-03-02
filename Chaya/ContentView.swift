//
//  ContentView.swift
//  Chaya
//
//  Created by Md Sifat on 3/1/20.
//  Copyright © 2020 Md Sifat. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var currentPage = 0
    var body: some View {
        ZStack (alignment: .top){
            VStack{
                ZStack{
                    if currentPage == 0{
                        Image("img1").resizable().frame(height:250).cornerRadius(20).padding()
                    }else if currentPage == 1{
                        Image("img2").resizable().frame(height:250).cornerRadius(20).padding()
                    }else if currentPage == 2{
                        Image("img3").resizable().frame(height:250).cornerRadius(20).padding()
                    }else if currentPage == 3{
                        Image("img4").resizable().frame(height:250).cornerRadius(20).padding()
                    }else if currentPage == 4{
                        Image("img5").resizable().frame(height:250).cornerRadius(20).padding()
                    }else{
                        Image("img6").resizable().frame(height:250).cornerRadius(20).padding()
                    }
                }
                pageControl(current: currentPage)
                HStack{
                    Button(action: {
                        if self.currentPage != 0{
                            self.currentPage -= 1
                        }
                    }) {
                        Text("<").font(.system(size: 50))
                    }.foregroundColor(.gray)
                    Spacer()
                    Button(action: {
                        if self.currentPage < 6{
                            self.currentPage += 1
                        }
                    }) {
                        Text(">").font(.system(size: 50))
                    }.foregroundColor(.gray)
                }.padding().offset(y: -250)
                
            }.animation(.spring())
            ZStack{
                ScrollView{
                    HStack{
                        VStack{
                            Image("bg1").resizable().frame(width:150, height:100).cornerRadius(10).padding(.trailing, 10)
                            Image("ico").resizable().frame(width:65, height:45).offset(y: -90)
                            Text("Medicine").offset(y: -94).foregroundColor(.purple)
                        }
                        VStack{
                            Image("bg1").resizable().frame(width:150, height:100).cornerRadius(10).padding(.trailing, 10)
                            Image("ico1").resizable().frame(width:50, height:50).offset(y: -90)
                            Text("Health Care").offset(y: -94).foregroundColor(.purple)
                        }
                    }
                    HStack{
                        VStack{
                            Image("bg1").resizable().frame(width:150, height:100).cornerRadius(10).padding(.trailing, 10)
                            Image("ico2").resizable().frame(width:50, height:50).offset(y: -90)
                            Text("Bed Time").offset(y: -94).foregroundColor(.purple)
                        }
                        VStack{
                            Image("bg1").resizable().frame(width:150, height:100).cornerRadius(10).padding(.trailing, 10)
                            Image("ico3").resizable().frame(width:50, height:50).offset(y: -90)
                            Text("Food Care").offset(y: -94).foregroundColor(.purple)
                        }
                    }.offset(y: -70)
                    HStack{
                        VStack{
                            Image("bg1").resizable().frame(width:150, height:100).cornerRadius(10).padding(.trailing, 10)
                            Image("ico1").resizable().frame(width:50, height:50).offset(y: -90)
                            Text("Health Care").offset(y: -94).foregroundColor(.purple)
                        }
                        VStack{
                            Image("bg1").resizable().frame(width:150, height:100).cornerRadius(10).padding(.trailing, 10)
                            Image("ico2").resizable().frame(width:50, height:50).offset(y: -90)
                            Text("Health Care").offset(y: -94).foregroundColor(.purple)
                        }
                    }.offset(y: -140)
                        
                    }
                    
                }.offset(y: 350)
            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    struct pageControl : UIViewRepresentable{
        
        var current = 0
        func makeUIView(context: UIViewRepresentableContext<pageControl>)-> UIPageControl{
            let page = UIPageControl()
            page.currentPageIndicatorTintColor = .black
            page.numberOfPages = 6
            page.pageIndicatorTintColor = .gray
            return page
        }
        func updateUIView(_ uiView: UIPageControl, context: UIViewRepresentableContext<pageControl>) {
            uiView.currentPage = current
        }
        
        
        
}
