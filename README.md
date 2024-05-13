# TerminateApplication
An extension to SwiftUI that will put terminateApplication() into the environment.

## Installation

### Manual:

Download `TerminateApplication.swift` and add the script to your project.

## Usage

Simply add `.titleBar()` as a view modifier to a view to get the title bar behavior. As of that moment the user is able to move the window of your app by dragging on that view. When the user double clicks on it, the window will either zoom or be minimized depending on its user preferences.

1. We declare an `terminateApplication` environment value.
2. Then, we can call this wherever we want to terminate the application.

```swift
import SwiftUI

struct ContentView: View {
    // 1
    @Environment(\.terminateApplication) private var terminateApplication 
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button("Quit") {
                // 2
                terminateApplication()
            }
        }
        .padding()
    }
}
```

## Donate

If you have been enjoying my free Swift package, please consider showing your support by buying me a coffee through the link below. Thanks in advance!

<a href="https://www.buymeacoffee.com/markvanwijnen" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/arial-yellow.png" height="60px" alt="Buy Me A Coffee"></a>
