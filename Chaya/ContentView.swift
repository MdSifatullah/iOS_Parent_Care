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
        VStack{
            ZStack{
                if currentPage == 0{
                    Image("img1").resizable().frame(height:300).cornerRadius(20).padding()
                }else if currentPage == 1{
                    Image("img2").resizable().frame(height:300).cornerRadius(20).padding()
                }else if currentPage == 2{
                    Image("img3").resizable().frame(height:300).cornerRadius(20).padding()
                }else if currentPage == 3{
                    Image("img4").resizable().frame(height:300).cornerRadius(20).padding()
                }else{
                    Image("img5").resizable().frame(height:300).cornerRadius(20).padding()
                }
            }
            pageControl(current: currentPage)
            HStack{
                Button(action: {
                    if self.currentPage != 0{
                        self.currentPage -= 1
                    }
                }) {
                    Text("Previous").padding(15)
                }.foregroundColor(.white).cornerRadius(20)
                Button(action: {
                    if self.currentPage < 5{
                        self.currentPage += 1
                    }
                }) {
                    Text("Next").padding(15)
                    }.foregroundColor(.white).cornerRadius(20)
            }.padding()
                .offset(y: -150)
            
        }.animation(.spring())
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
        page.numberOfPages = 5
        page.pageIndicatorTintColor = .gray
        return page
    }
    func updateUIView(_ uiView: UIPageControl, context: UIViewRepresentableContext<pageControl>) {
        uiView.currentPage = current
    }
    
    
    
}
