//
//  ContentView.swift
//  SwiftUIFirstSteps
//
//  Created by Salome Lapiashvili on 07.12.23.
//

import SwiftUI


struct EditProfileView: View {
    var body: some View {
        VStack {
            TopBar()
            Spacer()
            EditableFields()
            SaveChangesButton()
            Spacer()
        }
        .padding()
        .edgesIgnoringSafeArea(.top)
        .background(Color("BackgroundColor"))
    }
}

struct TopBar: View {
    var body: some View {
        Spacer()
        Spacer()
        VStack {
            GoBackButton()
            ProfileInfo()
        }
    }
}

struct GoBackButton: View {
    var body: some View {
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        Button(action: {
        }) {
            Image(systemName: "chevron.backward")
                .resizable()
                .frame(width: 15, height: 25)
                .foregroundColor(.black)
                .padding()
            Spacer()
        }
    }
}

struct ProfileInfo: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Text("Edit Profile")
                    .bold()
                    .font(.title2)
                    .foregroundColor(.black)
                
                Image("ProfilePicture")
                    .resizable()
                    .frame(width: 160, height: 160)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth: 2))
                    .overlay(
                        Image("Photograph")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .offset(x: 60, y: 60)
                    )
            }
            Spacer()
        }
    }
}

struct EditableFields: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            EditProfileField(title: "Name", placeholder: "test")
            EditProfileField(title: "Email", placeholder: "test@gmail.com")
            EditProfileField(title: "Password", placeholder: "enter your password")
            EditProfileField(title: "Date of Birth", placeholder: "enter your birthday")
            EditProfileField(title: "Country/Region", placeholder: "Georgia")
        }
        .padding()
    }
}

struct EditProfileField: View {
    var title: String
    var placeholder: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .foregroundColor(.black)
                .bold()
            TextField(placeholder, text: .constant(""))
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(5)
        }
    }
}

struct SaveChangesButton: View {
    var body: some View {
        Button("Save changes") {}
            .padding()
            .frame(width: 250, height: 50)
            .background(Color("ButtonColor"))
            .foregroundColor(.white)
            .cornerRadius(10)
        Spacer()
            .padding()
            .padding()
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
