//
//  StoriesUIView.swift
//  MotoTravel
//
//  Created by Ваня Науменко on 9.04.23.
//

import SwiftUI
import CoreData

// MARK: - StoriesUIView

struct StoriesUIView: View {
    
    @State var post = [
        Post(title: "First post", body: "This is my first post!", author: "John Doe", creationDate: Date()),
        Post(title: "Second post", body: "This is my second post!", author: "Jane Doe", creationDate: Date()),
        ]
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            Image(systemName: "person.circle")
                .font(.system(size: 64))
                .foregroundColor(.gray)
        
            VStack(alignment: .leading, spacing: 8) {
                Text(post.description)
                    .font(.headline)

                Text(post.description)
                    .font(.title3)
                    .foregroundColor(.primary)

                Text("dsojnajn;")
                    .font(.body)
                    .foregroundColor(.secondary)

                Spacer()
            
                HStack {
                    Image(systemName: "message")
                        .foregroundColor(.gray)
//
//                    Text("\(post.comments.count) Comments")
//                        .foregroundColor(.gray)
                
                    Spacer()
                
//                    Text(post.dateString)
//                        .font(.caption)
//                        .foregroundColor(.gray)
                }
            }
        }
        .padding()
    }
}

// MARK: - StoriesUIView_Previews

struct StoriesUIView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesUIView()
    }
}

struct Post{
  //  let id: UUID
    let title: String
    let body: String
    let author: String
    let creationDate: Date
    
    var description: String {
            return "\(title)\nby \(author)\non \(creationDate)\n\(body)"
        }
    
}
