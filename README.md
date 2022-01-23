<p align="center"><img src="https://user-images.githubusercontent.com/31904352/150697538-ba66bcff-6511-4bc5-87c2-7d35468a077a.svg" width="240"></a></p>

# About LottieView
> LottieView is a **_Wrapper_** around Lottie in SwiftUI that allows chaining animations & triggering callbacks at certain frames

# Requirements
- iOS 13.0
- Swift 5+

# Demo


https://user-images.githubusercontent.com/31904352/150697693-ee99b4ed-5060-44aa-a88f-ec81d193446c.mp4


## Dependencies
- Lottie

## Installation
### Swift Package Manager (SPM)
- [Documentation](https://developer.apple.com/documentation/swift_packages/adding_package_dependencies_to_your_app)

## Usage
```swift
var body: some View {
    VStack {
      /* Lottie Wrapping Begins */
    LottieView(animation: .splash /* 1 */, animationFramesHandlers: [
      .init(startFrame: 0, endFrame: 80, onComplete: { didFinish in // 2
        guard didFinish else { return }
        withAnimation(.spring()) {
          showFooterText = true // 3
        }
      }),
      .init(startFrame: 80, endFrame: 147, onComplete: { didFinish in
        guard didFinish else { return }
        withAnimation {
          finishSplash = true
        }
      })
    ])
      /* Lottie Wrapping Ends */
      
      if showFooterText {
        Text("Al Najd".localized)
          .font(.pTitle2.bold())
          .foregroundColor(.mono.offblack)
          .opacity(showFooterText ? 1 : 0)
          .offset(y: showFooterText ? 0 : 100)
      }
      
      if showFooterText {
        Text("The Compass towards discipline \nwith Allah")
          .font(.pHeadline)
          .foregroundColor(.mono.label)
          .multilineTextAlignment(.center)
          .opacity(showFooterText ? 1 : 0)
          .offset(y: showFooterText ? 0 : 100)
      }
    }.background(
      Color
        .primary
        .background
        .ignoresSafeArea()
    )
  }
```
In your View code
1. You pass the JSON file name
2. set the frames and if you want to take action in them, the default is to play from start to end with no callbacks
3. handle happy and cases where animation didn't finish


## Known Issues
- None so far

## Contributions
You know the drill, Fork, Make your edits, and open a PR if you want
