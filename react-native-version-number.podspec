require 'json'
package_json = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name           = "react-native-version-number"
  s.version        = package_json["version"]
  s.summary        = package_json["description"]
  s.homepage       = "https://github.com/pandarose/react-native-version-number"
  s.license        = package_json["license"]
  s.author         = { package_json["author"] => package_json["author"] }
  s.platforms      = { :ios => "9.0", :tvos => "9.0" }
  s.source         = { :git => "#{package_json["repository"]["url"]}.git", :tag => "v#{s.version}" }
  s.source_files   = 'ios/*.{h,m}'
  s.dependency 'React'

end