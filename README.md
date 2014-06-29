# AHKNavigationController
[![License: MIT](https://img.shields.io/badge/license-MIT-red.svg?style=flat)](https://github.com/fastred/AHKNavigationController/blob/master/LICENSE)
[![CocoaPods](https://img.shields.io/cocoapods/v/AHKNavigationController.svg?style=flat)](https://github.com/fastred/AHKNavigationController)


A `UINavigationController` subclass that re-enables the interactive pop gesture (`UIScreenEdgePanGestureRecognizer` instance) when the navigation bar is hidden or a custom back button is used.

The solution is explained in detail in a blog post:
[Interactive Pop Gesture with Custom Back Button or Hidden Navigation Bar][0]

## Demo

To run the example project: clone the repo, and run `pod install` from the Example directory first. Alternatively, run `pod try AHKNavigationController` from the command line.

## Requirements

 * iOS 7
 * ARC enabled

## Installation

AHKNavigationController is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "AHKNavigationController"

and set your navigation controller to be an instance of `AHKNavigationController` or its subclass.

If you don't use CocoaPods, you can simply copy the files from `Classes/` directory to your project.

## Author

Arkadiusz Holko:

* [Blog](http://holko.pl/)
* [@arekholko on Twitter](https://twitter.com/arekholko)

## Credits

The example project was created by [@chakrit](https://github.com/chakrit).


[0]: http://holko.pl/ios/2014/04/06/interactive-pop-gesture/
