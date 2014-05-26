Pod::Spec.new do |s|
  s.name         = "AHKNavigationController"
  s.version      = "0.1.1"
  s.summary      = "A UINavigationController replacement allowing interactive pop gesture when the navigation bar is hidden or a custom back button is used."

  s.homepage     = "http://holko.pl/ios/2014/04/06/interactive-pop-gesture/"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  
  s.authors      = { "Arkadiusz Holko" => "fastred@fastred.org" }

  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/fastred/AHKNavigationController.git", :tag => "v0.1.1" }

  s.source_files = "Classes"
  s.requires_arc = true
end
