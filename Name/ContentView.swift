//
//  ContentView.swift
//  Name
//
//  Created by Maris Lagzdins on 08/08/2022.
//

import SwiftUI

struct ContentView: View {
    private let name: String

    init() {
        self.name = ProcessInfo.processInfo.environment["nickname"] ?? "stranger"
    }

    var body: some View {
        Text("Hello, \(name)")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
