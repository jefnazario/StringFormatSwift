Pod::Spec.new do |spec|

  spec.name         = "SimpleStringFormat"
  spec.version      = "0.0.1"
  spec.summary      = "Simple Swift string format with specific patterns"

  spec.description  = <<-DESC
  Simple Swift string format with specific patterns, to make easy UILabel/UITextField text customization.
                   DESC

  spec.homepage     = "https://github.com/jefnazario/StringFormatSwift"

  spec.license      = { :type => "GPL-3.0", :file => "https://github.com/jefnazario/StringFormatSwift/blob/master/LICENSE" }

  spec.author             = { "Jeferson F. Nazario" => "jefnazario@gmail.com" }
  spec.social_media_url   = "https://twitter.com/jefnazario"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.platform     = :ios, "11.0"
  spec.source       = { :git => "https://github.com/jefnazario/StringFormatSwift.git", :tag => "#{spec.version}" }
  spec.swift_version = "4.2"


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source_files  = "String.Format/String.Format/**/*.{h,m,swift,framework}"
  spec.exclude_files = "String.Format/StringFormatSwift/**/*.*"
end
