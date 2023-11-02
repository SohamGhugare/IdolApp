//
//  ContentView.swift
//  IdolApp
//
//  Created by Soham Ghugare on 02/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Text("Explore Idols")
                .foregroundStyle(.black)
                .fontWeight(.bold)
                .font(.system(size: 45))
                .padding(.bottom, 80)
            
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(0..<10) {x in
                        
                        
                        HStack {
                            Spacer()
                            Image(systemName: "globe")
                                .resizable()
                                .frame(width: 50, height: 50)
                            Spacer()
                            Text("Item \(x)")
                                .foregroundStyle(.black)
                                .font(.largeTitle)
                            Spacer()
                                
                        }
//                        .padding(.horizontal, 20)
                        .frame(width: 300, height: 150)
                        .background(.white)
                        .overlay {
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(.black, lineWidth: 3)
                        }
                       
                        
                        
                        
                    }
                }
            } .frame(width: 400, height: 500)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
