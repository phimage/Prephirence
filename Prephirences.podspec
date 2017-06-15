Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "Prephirences"
  s.version      = "3.0.1"
  s.summary      = "A Swift library to manage preferences"
  s.description  = <<-DESC
                   Prephirences is a Swift library that provides useful protocols and methods to manage preferences.
                   Preferences could be user preferences (NSUserDefaults) or your own private application preferences
                   DESC
  s.homepage     = "https://github.com/phimage/Prephirences"

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.license      = "MIT"

  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.author             = { "phimage" => "eric.marchand.n7@gmail.com" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source       = { :git => "https://github.com/riveryan/Prephirences.git", :branch => "xcode9" }

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.default_subspecs = 'Core', 'Keys'

  s.subspec "Core" do  |sp|
    sp.source_files = "Sources/*.swift"
  end

  s.subspec "CoreData" do  |sp|
    sp.source_files = ['Sources/CoreData/*.swift']
    sp.dependency 'Prephirences/Core'
  end

  s.subspec "UserDefaults" do  |sp|
    sp.source_files = ['Sources/UserDefaults/*.swift']
    sp.dependency 'Prephirences/Core'
  end

  s.subspec "Keys" do  |sp|
    sp.source_files = ['Sources/Keys/*.swift']
    sp.dependency 'Prephirences/Core'
  end

  s.subspec "RawRepresentableKey" do  |sp|
    sp.source_files = ['Sources/RawRepresentableKey/*.swift']
    sp.dependency 'Prephirences/Core'
  end

  s.subspec "All" do  |sp|
    sp.dependency 'Prephirences/CoreData'
    sp.dependency 'Prephirences/UserDefaults'
    sp.dependency 'Prephirences/Keys'
  end

  s.subspec "Cocoa" do  |sp|
    sp.platform = :osx, '10.10'
    sp.osx.source_files = ['Xcodes/Mac/*.swift']
  end

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.resource  = "logo.png"

end
