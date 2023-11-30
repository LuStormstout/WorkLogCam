// ContentView.swift
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            CameraView()
                .navigationBarTitle("相机应用", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
