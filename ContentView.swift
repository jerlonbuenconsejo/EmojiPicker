//
//  ContentView.swift
//  first_ios_app
//
//  Created by Jerlon Buenconsejo on 8/26/23.
//

import SwiftUI

enum Emoji: String,CaseIterable {
    case 😂, 👇, 😮, 🚀
}
    
struct ContentView: View {
    @State var selection: Emoji = .😂
    
    var body: some View {
        NavigationView{
            VStack{
                Text(selection.rawValue)
                    .font(.system(size:150))
                Picker("Select Emoji",  selection: $selection){
                    //write something
                    ForEach(Emoji.allCases, id: \.self) { emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Emoji Picker!")
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
