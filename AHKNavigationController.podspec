Pod::Spec.new do |s|
  s.name         = "AHKNavigationController"
  s.version      = "0.1.0"
  s.summary      = "Drop-in replacement for UINavigationController that allows interactive pop gesture while the navigation bar is hidden."

  s.description  = <<-DESC
                   Drop-in replacement for `UINavigationController` that allows interactive pop gesture while
                   the navigation bar is hidden.
                   DESC

  s.homepage     = "http://holko.pl/ios/2014/04/06/interactive-pop-gesture/"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  
  s.authors      = {
    "Arkadiusz Holko" => "arkadiusz@holko.pl",
    "Chakrit Wichian" => "service@chakrit.net"
  }

  s.platform     = :ios, "6.1"
  s.source       = { :git => "https://github.com/chakrit/AHKNavigationController.git", :tag => "v0.1.0" }

  s.source_files  = "AHKNavigationController/AHKNavigationController.m", "AHKNavigationController/AHKNavigationController.h"
  s.requires_arc = true
end
