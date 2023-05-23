//
//  ContentView.swift
//  MotoTravel
//
//  Created by Ваня Науменко on 9.04.23.
//

import CoreData
import SwiftUI

// MARK: - ContentView

struct ContentViewTwo: View {
    var body: some View {
        TabView {
            NewsUIView()
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("News")
                }
            StoriesUIView()
                .tabItem {
                    Image(systemName: "captions.bubble")
                    Text("Stories")
                }
            MapUIView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
            PersonalAccountView()
                .tabItem {
                    Image(systemName: "person.crop.square")
                    Text("Account")
                }
        }.accentColor(.teal)
         .preferredColorScheme(.dark)
    }
}

// MARK: - ContentView_Previews

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewTwo().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
