//
//  ContentView.swift
//  intro
//
//  Created by Sanjay Lal on 24/08/23.
//

import SwiftUI

struct ContentView: View {
    @State private var pageIndex = 0
    private let introPages: [Intro] = Intro.introPages
    private let dotAppearance = UIPageControl.appearance()
    
    var body: some View {
        TabView(selection: $pageIndex){
            ForEach(introPages) { page in
                HStack{
                    IntroUIView(intro: page)
                    
                    if page == introPages.last{
                        
                        Button("Next", action: goToZero)
                    }
                    else{
                        Button("Next",action: incrementPage)
                    }
                    //Spacer()
                }
                
                .tag(page.tag)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .animation(.easeInOut, value: pageIndex)
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .interactive))
        .onAppear{
            dotAppearance.currentPageIndicatorTintColor = .black
            dotAppearance.pageIndicatorTintColor = .gray
        }
    }
    
    func incrementPage(){
        pageIndex += 1
    }
    
    func goToZero(){
        pageIndex = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
