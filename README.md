# Eraser ⌫

Tool for Erasing and overwriting the previous output in terminal.
## Installation
```swift
import PackageDescription

let package = Package(
    name: "MyPackage",
    dependencies: [
        .package(url: "http://github.com/aniket965/Eraser.git", from: "1.0.1")
    ],
    targets: [
        .target(
            name: "MyPackage",
            dependencies: ["Eraser"]
        )
    ]
)
```
## Usage
```swift
import Darwin

print("swift")

// Erases After 1 Second
sleep(1)
erase()
print("Swift ❤️")
```