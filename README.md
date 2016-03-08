# SwiftCSS

SwiftCSS extends UIView by providing CSS-like properties to position and size elements.
```
        let name = UILabel()
        name.text = "Look at me I'm some text"
        name.textAlignment = NSTextAlignment.Center
        name.marginTop = 20 // 20 pixels below the top of the page
        name.widthPercent = 80 // centers with a width of 80% of the page

        let addBtn = UIButton()
        name.marginTop = 20 // 20 pixels below the previous element
        addBtn.widthPercent = 100
        addBtn.height = 50 //pixels
        addBtn.marginBottomAbsolute = 0 //snaps to the bottom of the page
```

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

**Note** The order in which views are added to a parent view is important, just like in HTML.

## Available Properties

```
marginTop
```
```
marginTopAbsolute
```
```
marginBottom
```
```
marginBottomAbsolute
```
```
marginLeft
```
```
widthPercent
```
```
heightPercent
```
```
width
```
```
height
```

## Example Screenshot
![screenshot][screenshot.png]


## Installation

SwiftCSS is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "SwiftCSS"
```

## Author

[@soheil](https://twitter.com/soheil)

## License

SwiftCSS is available under the MIT license. See the LICENSE file for more info.
