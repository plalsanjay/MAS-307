//
//  IntroUIView.swift
//  intro
//
//  Created by Sanjay Lal on 24/08/23.
//

import SwiftUI

struct IntroUIView: View {
    
    var intro: Intro
    var body: some View {
        ZStack(){
            Image("\(intro.imageUrl)")
                //.resizable()
                .scaledToFit()
                .padding()
                .cornerRadius(30)
                .background(.gray.opacity(0.10))
                .cornerRadius(10)
                //.padding()
            
            VStack(){
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Image("\(intro.textBox)")
                    .overlay(Image("\(intro.description)")
                        .padding(-50))
                
                
                Spacer()
                Spacer()
            }
            //Text(intro.name)
                //.font(.title)
            //Text(intro.description)
                //.font(.subheadline)
                //.frame(width: 300)
        }
    }
}

struct IntroUIView_Previews: PreviewProvider {
    static var previews: some View {
        IntroUIView(intro: Intro.introPage)
    }
}
