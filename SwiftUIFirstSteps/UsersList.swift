//
//  UsersList.swift
//  SwiftUIFirstSteps
//
//  Created by Salome Lapiashvili on 07.12.23.
//

import SwiftUI

struct User {
    var name: String
    var imageName: String
    var chatContent: String
    var lastSeen: String
}

struct ChatCell: View {
    var user: User
    var body: some View {
        HStack {
            Image(user.imageName)
                .resizable()
                .frame(width: 45, height: 45)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading) {
                Text(user.name)
                    .foregroundColor(.white)
                Text(user.chatContent)
                    .foregroundColor(.gray)
                    .font(.footnote)
            }
            .padding(.leading, 8)
            Spacer()
            
            Text(user.lastSeen)
                .foregroundColor(.gray)
                .font(.footnote)
        }
        .padding(12)
    }
}

struct ContentView: View {
    @State private var users: [User] = [
        User(name: "Obi-Wan Kenobi", imageName: "1", chatContent: "Hello there!", lastSeen: "a minute ago"),
        User(name: "Grandpa Joe", imageName: "2", chatContent: "The cat is safe", lastSeen: "3 hours ago"),
        User(name: "Karen Baker", imageName: "3", chatContent: "Is that your car parked outside?", lastSeen: "2 hours ago"),
        User(name: "Gaukmebulia Gaukmebulia", imageName: "4", chatContent: "I don't know how to delete this app", lastSeen: "5 hours ago"),
        User(name: "Michael Scott", imageName: "5", chatContent: "That's what she said", lastSeen: "7:23"),
        User(name: "Andrew Huberman", imageName: "6", chatContent: "did you get my cold plunge", lastSeen: "04:15"),
        User(name: "Boromir", imageName: "7", chatContent: "you did what I could not", lastSeen: "last week"),
    ]
    
    var body: some View {
        ZStack {
            Color("BackgroundDark").edgesIgnoringSafeArea(.all)
            VStack {
                Text("Chat")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding(40)
                
                ForEach(users, id: \.name) { user in
                    VStack {
                        ChatCell(user: user)
                        
                        Divider()
                            .background(Color.gray)
                    }
                }
                
                Button(action: {
                    users.removeAll()
                }) {
                    Text("Clear Chat")
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 250, height: 50)
                        .background(Color("ButtonColor"))
                        .cornerRadius(10)
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
