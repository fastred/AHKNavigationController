# AHKNavigationController

Drop-in replacement for `UINavigationController` that allows interactive pop gesture while
the navigation bar is hidden.

If you are using `UINavigationController` with `navigationBarHidden` set to `YES` you will
lose the ability to swipe from the left edge of the screen to go back to previous
controller. This implementation fixes the problem by re-enabling the gesture.

This is not originally my work. I merely packaged what was described in this blog post:
[Interactive Pop Gesture with Custom Back Button or Hidden Navigation Bar][0[]

# USAGE

If you are using CocoaPods, adds this line to your `Podfile`

```ruby
pod 'AHKNavigationController'
```

And simply import it in your code or set your navigation controller classes to
`AHKNavigationController`.

[0]: http://holko.pl/ios/2014/04/06/interactive-pop-gesture/
