//
//  ContentView.swift
//  TabViewProject
//
//  Created by Łukasz Adamczak on 11/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State var isPresenting: Bool = true
    var body: some View {
        NavigationView {
            Text("Initial View!")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "gear")
                        })
                    }
            }.sheet(isPresented: $isPresenting) {
                    NavigationView {
                        Text("Setting page")
                            .toolbar {
                                ToolbarItem {
                                    Button("Save") {}
                                }
                            }
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
