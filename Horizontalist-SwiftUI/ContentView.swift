//
//  ContentView.swift
//  Horizontalist-SwiftUI
//
//  Created by Mert Ala on 16.11.2019.
//  Copyright © 2019 Mert Ala. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        VStack{
            
            ScrollView(.horizontal, showsIndicators: false) {
               
            HStack {
                ForEach (0..<6) { i in
                    
                    cardView(img:"img\(i)").padding(6)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct cardView : View {

    var  img = ""
    var body: some View {
        
        VStack {
            Image (img)
            .renderingMode(.original)
            .resizable()
            
        }.frame(width:250, height:400)
        .cornerRadius(20)
    }
}
    

