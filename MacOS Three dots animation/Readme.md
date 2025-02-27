# Blur Loader with Three Dots Animation for macOS

This project demonstrates how to create a **modern blur loader view** with three dots animation for macOS applications using Swift and NSView.

## Features
- Three dots bouncing/fading animation
- Blur background with adjustable transparency
- Full view blocking (prevents user interaction during loading)
- Easy to reuse across projects
- Customizable colors and blur effect types

## Preview
| Feature           | Preview             |
|----------------|------------------|
| Three Dots Animation | 🔵 🔵 🔵 (Fade In/Out Effect) |
| Blur Background | ✅               |
| User Interaction Disabled | ✅               |

## Installation
1. Clone the repository.
2. Add `BlurLoaderView.swift` to your macOS project.
3. Import the file where needed.

## Usage
```swift
let loader = BlurLoaderView(frame: self.view.bounds)
loader.show(in: self.view)

// Hide loader after 3 seconds
DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
    loader.hide()
}


# Customization

## Change Dot Color
`dot1.layer?.backgroundColor = NSColor.systemBlue.cgColor`

## Change Blur Effect
`blurEffect.material = .light`

License

This project is licensed under the MIT License.

Feel free to contribute or suggest any improvements!