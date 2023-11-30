// CardView.swift
import SwiftUI

struct CardView: View {
    var location: String
    var time: String
    var weather: String

    var body: some View {
        VStack {
            Text("位置信息: \(location)")
            Text("时间: \(time)")
            Text("天气: \(weather)")
        }
        .padding()
        .background(Color.white.opacity(0.8))
        .cornerRadius(10)
        .padding()
    }
}
