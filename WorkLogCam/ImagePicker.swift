// ImagePicker.swift
import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
    @Binding var capturedImage: UIImage?
    @Binding var isShowingImagePicker: Bool

    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        var parent: ImagePicker

        init(parent: ImagePicker) {
            self.parent = parent
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let uiImage = info[.originalImage] as? UIImage {
                parent.capturedImage = uiImage
            }

            parent.isShowingImagePicker = false
        }

        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent.isShowingImagePicker = false
        }
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }

    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {}

    func takePhoto() {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let picker = UIImagePickerController()
            picker.delegate = makeCoordinator()
            picker.sourceType = .camera

            DispatchQueue.main.async {
                self.isShowingImagePicker = true
            }
        } else {
            print("Camera is not available.")
            // 处理没有可用相机的情况
            // 例如，显示一个警告或者提供备用的选择方式
        }
    }
}
