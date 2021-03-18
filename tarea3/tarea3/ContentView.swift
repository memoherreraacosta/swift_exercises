//
//  ContentView.swift
//  tarea3
//
//  Created by Memo Herrera on 04/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Header()
            Search().padding(.top, 10)
            Buttons().padding(.vertical, 20)
            Cards().padding(.top, 20)
            Footer().offset()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Good morning Memo")
                    .font(.system(size: 19, weight: .medium, design: .serif))
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
                Text("iOS Course")
                    .font(.system(size: 28, weight: .bold, design: .serif))
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .padding(.top, 5)
            }.padding(.leading, 30)
            Spacer()
            Image("loggeduser")
                .resizable()
                .frame(width: 50, height: 50)
                .padding(.trailing, 30)
        }
    }
}

struct Search: View {
    @State var searchCriteria: String = ""
    var body: some View {
        HStack {
            TextField("Search for tech or another things", text: $searchCriteria)
                .foregroundColor(.gray)
                .font(.system(size: 15))
                .padding(.leading, 20)
            Spacer()
            Image("magnifyingglass")
                .font(.system(size: 26, weight: .medium, design: .serif))
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .padding(.trailing, 20)
        }
        .frame(width: 350, height: 54)
        .background(Color.white).cornerRadius(14)
    }
}

struct Buttons: View {
    var body: some View {
        VStack {
            HStack (spacing: 35) {
                VStack {
                    ZStack {
                        Image(systemName: "clock")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                        
                    }
                    .frame(width: 60, height: 60)
                    .background( Color(.blue))
                    .cornerRadius(10)
                    
                    Text("Recent")
                        .font(.system(size: 12, weight: .bold, design: .serif))
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }

                VStack {
                    ZStack {
                        Image(systemName: "flame")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                        
                    }
                    .frame(width: 60, height: 60)
                    .background( Color(.blue))
                    .cornerRadius(10)
                    
                    Text("Trending").font(.system(size: 12, weight: .bold, design: .serif)).foregroundColor(.blue).padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                }
                VStack {
                    ZStack {
                        Image(systemName: "crown").font(.system(size: 24)).foregroundColor(.white)
                        
                    }
                    .frame(width: 60, height: 60)
                    .background( Color(.blue))
                    .cornerRadius(10)
                    
                    Text("Popular").font(.system(size: 12, weight: .bold, design: .serif)).foregroundColor(.blue).padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                }
                VStack {
                    ZStack {
                        Image(systemName: "diamond").font(.system(size: 24)).foregroundColor(.white)
                        
                    }
                    .frame(width: 60, height: 60)
                    .background( Color(.blue))
                    .cornerRadius(10)
                    
                    Text("Premium").font(.system(size: 12, weight: .bold, design: .serif)).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/).padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                }
            }
        }
    }
}

struct Cards: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Featured Items")
                .font(.system(size: 22, weight: .bold, design: .serif))
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        
            ScrollView (.horizontal){
                HStack (spacing: 40){
                    VStack{
                        Image("bluecosmic")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        VStack(alignment: .leading) {
                        Text("Cosmic articles")
                                .font(.system(size: 18, weight: .bold, design: .serif))
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                .padding(.horizontal, 10)
                            Text("Read the most important papers")
                                .font(.system(size: 15, weight: .bold, design: .serif))
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                .lineLimit(3)
                                .padding(.top, 5)
                                .padding(.leading, 10)
                                .padding(.bottom, 15)
                        }.frame(height: 100)
                    }
                    .frame(width: 280, height: 340)
                    .background(Color.white)
                    .cornerRadius(30)
                    
                    VStack{
                        Image("bluesphere")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        VStack(alignment: .leading) {
                        Text("Spehre articles")
                                .font(.system(size: 18, weight: .bold, design: .serif))
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                .padding(.horizontal, 10)
                            Text("Read the most important papers")
                                .font(.system(size: 15, weight: .bold, design: .serif))
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                .lineLimit(3)
                                .padding(.top, 5)
                                .padding(.leading, 10)
                                .padding(.bottom, 15)
                        }.frame(height: 100)
                    }
                    .frame(width: 280, height: 340)
                    .background(Color.white)
                    .cornerRadius(30)
                }
            }
        }.padding(.leading, 20)
    }
}

struct Footer: View {
    var body: some View {
        HStack (spacing: 60) {
            VStack{
                Image(systemName: "house")
                    .font(.system(size: 26))
                    .foregroundColor(.white)
                Circle()
                    .frame(width: 6, height: 6)
                    .foregroundColor(.white)
            }
            VStack{
                Image(systemName: "heart")
                    .font(.system(size: 26))
                    .foregroundColor(.white)
                Circle()
                    .frame(width: 6, height: 6)
                    .foregroundColor(.white)
            }
            VStack{
                Image(systemName: "faceid")
                    .font(.system(size: 26))
                    .foregroundColor(.white)
                Circle()
                    .frame(width: 6, height: 6)
                    .foregroundColor(.white)
            }
            VStack{
                Image(systemName: "swift")
                    .font(.system(size: 26))
                    .foregroundColor(.white)
                Circle()
                    .frame(width: 6, height: 6)
                    .foregroundColor(.white)
            }
        }
        .frame(height: 84)
        .frame(maxWidth: .infinity)
        .background(Color.blue)
        .cornerRadius(20)
    }
}
