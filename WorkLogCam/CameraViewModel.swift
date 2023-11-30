// CameraViewModel.swift
import SwiftUI
import CoreLocation

class CameraViewModel: ObservableObject {
    static let shared = CameraViewModel()

    @Published var capturedImage: UIImage?
    @Published var location: String = ""
    @Published var time: String = ""
    @Published var weather: String = ""
    @Published var isShowingImagePicker = false

    // 通过显式创建Binding来解决问题
    var imagePicker: ImagePicker?

    func setupCamera() {
        // 使用 Binding 以创建绑定
        imagePicker = ImagePicker(capturedImage: Binding(get: { self.capturedImage }, set: { self.capturedImage = $0 }), isShowingImagePicker: .constant(true))
    }

    func takePhoto() {
        // 确保 imagePicker 不为 nil，然后调用 takePhoto
        imagePicker?.takePhoto()
    }

    func getLocationInfo() {
        // 实现获取位置、时间、天气信息的逻辑
        // 在这里，我简单地模拟一些信息
        location = "某某地"
        time = DateFormatter.localizedString(from: Date(), dateStyle: .medium, timeStyle: .medium)
        weather = "晴"
    }
}
