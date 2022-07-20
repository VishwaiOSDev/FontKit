
![FontKit](https://user-images.githubusercontent.com/71421776/179920902-e13126a0-3ad1-483e-a2ac-318a21d45127.png)

# FontKit

A new way to use custom fonts in your iOS, iPadOS, MacOS, WatchOS, TvOS applications.

  

## Features

- [x] Easy to use
- [x] Highly customizable
- [x] Supports only SwiftUI
- [X] Custom font modifiers for ease of use

## Available Fonts

> We will continuously add more fonts to this package

 - Inter
 - Lato
 - Poppins
 - OpenSans
 - Roboto
  
## 📦 Installation

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler.

Add this Swift package in Xcode using its Github repository url. (File > Swift Packages > Add Package Dependency...)

Add this URL https://github.com/VishwaiOSDev/FontKit.git and select **Add Package**.

After adding it select FontKit and the font that you would like to add it to your application. You can use multiple fonts.

![Choose Package for FontKit](https://user-images.githubusercontent.com/71421776/179920955-67bf6bd2-fa16-4fe1-8ff5-e634cc8c1ca7.png)

**Note:** FontKit should be selected 

### 🚀 How to use

FontKit makes your life easier.

Firstly, import the FontKit and the selected font *(FontInter, FontLato)* on the root of SwiftUI App.

```swift
import FontKit
import FontInter
```

Register the fonts in the init.

```swift
import FontKit
import FontInter

@main
struct FontKit_TestApp: App {
    
    init() {
        FontKit.registerInter()
        // You can register multiple fonts in here
        // FontKit.registerLato()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
```
With the help of modifiers we can consume the FontKit without headache.
```swift
Text("Hello, world!")
    .font(.inter(.bold(size: 22)))
```

**Note:** Make sure FontKit is imported when you are using this modifier.

###  Font Family and FontTypes
| Font Name | Font Family  | 
|--|--|
| Inter | ```.font(.inter)``` |
| Lato | ```.font(.lato)``` |
| OpenSans | ```.font(.openSans)```|
| Roboto | ```.font(.roboto)``` |
| Poppins | ```.font(.poppins)``` |

#### FontTypes
- ```black```
- ```bold```
- ```extraBold```
- ```extraLight```
- ```light```
- ```medium```
- ```regular```
- ```semibold```
- ```italic```
- ```thin```
- ```mediumItalic```
- ```boldItalic```
- ```heavy```

You can use about fontType to the custom fonts.

## Example
Below are the usages of the FontKit
```swift
Text("Hello, Inter!")
    .font(.inter(.bold(size: 22)))
```
```swift
Text("Hello, Lato!")
    .font(.lato(.heavy(size: 18)))
```
```swift
Text("Hello, Poppins!")
    .font(.poppins(.semibold(size: 20)))
```
```swift
Text("Hello, OpenSans!")
    .font(.openSans(.regular(size: 13)))
```
```swift
Text("Hello, Roboto!")
    .font(.roboto(.thin(size: 16)))
```

# License
FontKit is released under the MIT license.
