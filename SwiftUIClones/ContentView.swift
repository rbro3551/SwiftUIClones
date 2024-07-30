//
//  ContentView.swift
//  SwiftUIClones
//
//  Created by Riley Brookins on 7/27/24.
//

import SwiftUI
import SwiftfulRouting

struct ContentView: View {
    
    @State private var users: [User] = []
    @State private var products: [Product] = []
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(products) { product in
                    Text(product.title)
                        .foregroundStyle(.spotifyGreen)
                }
            }
        }
        .padding()
        .task {
            await getData()
        }
    }
    
    private func getData() async {
        do {
            users = try await DatabaseHelper().getUsers()
            products = try await DatabaseHelper().getProducts()
        } catch {
            
        }
    }
}

#Preview {
    ContentView()
}
