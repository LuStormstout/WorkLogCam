// CameraView.swift
import SwiftUI

struct CameraView: View {
    @ObservedObject var cameraViewModel = CameraViewModel()

    var body: some View {
        VStack {
            if let capturedImage = cameraViewModel.capturedImage {
                Image(uiImage: capturedImage)
                    .resizable()
                    .scaledToFit()

                // 显示位置、时间、天气等信息的卡片
                CardView(location: cameraViewModel.location,
                         time: cameraViewModel.time,
                         weather: cameraViewModel.weather)
            } else {
                Button("拍照") {
                    cameraViewModel.takePhoto()
                    // 获取位置、时间、天气信息
                    cameraViewModel.getLocationInfo()
                }
                .padding()
            }
        }
        .sheet(isPresented: $cameraViewModel.isShowingImagePicker) {
            ImagePicker(capturedImage: $cameraViewModel.capturedImage, isShowingImagePicker: $cameraViewModel.isShowingImagePicker)
        }
    }
}
