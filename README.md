# UUIDStringStyle

[![CI Status](https://img.shields.io/travis/ocworld/UUIDStringStyle.svg?style=flat)](https://travis-ci.org/ocworld/UUIDStringStyle)
[![Version](https://img.shields.io/cocoapods/v/UUIDStringStyle.svg?style=flat)](https://cocoapods.org/pods/UUIDStringStyle)
[![License](https://img.shields.io/cocoapods/l/UUIDStringStyle.svg?style=flat)](https://cocoapods.org/pods/UUIDStringStyle)
[![Platform](https://img.shields.io/cocoapods/p/UUIDStringStyle.svg?style=flat)](https://cocoapods.org/pods/UUIDStringStyle)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```swift
let canonical = UUID().uuidString(style: .canonical)    //E56D8738-C2EB-4021-A249-D125AAFE7F57
let noHyphens = UUID().uuidString(style: .noHyphens)    //055BD3A7178447DCA59C4E0A3F331B01
let surroundingBraces = UUID().uuidString(style: .surroundingBraces)    //{EE64F84B-8126-4814-9C2E-A9E0A5BE3680}
let urn = UUID().uuidString(style: .urn)    //urn:uuid:E756CC57-F606-4FD0-8923-CD328F3BC68F

let noHyphens2 = UUIDStringStyle.noHyphens.uuidString(UUID())   //055BD3A7178447DCA59C4E0A3F331B01
```

## Requirements

## Installation

UUIDStringStyle is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'UUIDStringStyle'
```

## Author

ocworld, ocworld@gmail.com

## License

UUIDStringStyle is available under the MIT license. See the LICENSE file for more info.
