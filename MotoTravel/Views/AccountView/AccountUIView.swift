//
//  AccountUIView.swift
//  MotoTravel
//
//  Created by Ваня Науменко on 9.04.23.
//

import SwiftUI

struct AccountUIView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            Image(systemName: "person.circle")
                .font(.system(size: 64))
                .foregroundColor(.gray)
            VStack(alignment: .leading, spacing: 8) {
                Text("Name")
                Text("Name")
                Text("Name")
            }
        }.padding()
    }
}

struct AccountUIView_Previews: PreviewProvider {
    static var previews: some View {
        AccountUIView()
    }
}
