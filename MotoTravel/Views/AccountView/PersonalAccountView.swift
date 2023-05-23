//
//  PersonalAccountView.swift
//  MotoTravel
//
//  Created by Ваня Науменко on 23.05.23.
//
import SwiftUI

struct PersonalAccountView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Personal Account")
                .font(.title)
                .padding(.bottom, 20)
            
            HStack {
                Image(systemName: "person.circle")
                    .font(.system(size: 60))
                
                VStack(alignment: .leading) {
                    Text("John Doe")
                        .font(.title)
                        .bold()
                    Text("john.doe@example.com")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            .padding(.bottom, 20)
            
            Text("Account Details")
                .font(.headline)
                .padding(.bottom, 10)
            
            VStack(alignment: .leading, spacing: 10) {
                AccountDetailRowView(label: "Username:", value: "johndoe")
                AccountDetailRowView(label: "Membership Level:", value: "Gold")
                AccountDetailRowView(label: "Total Points:", value: "2500")
            }
        }
        .padding()
    }
}

struct AccountDetailRowView: View {
    var label: String
    var value: String
    
    var body: some View {
        HStack {
            Text(label)
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Spacer()
            
            Text(value)
                .font(.subheadline)
                .bold()
        }
    }
}

struct PersonalAccountView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalAccountView()
    }
}
