Pod::Spec.new do |s|
  s.name         = "EGOTableViewPullRefresh"
  s.version      = "0.0.1"

  s.summary      = "pull up load more,pull down refresh"

  s.homepage     = "https://github.com/aiyuelian/EGOTableViewPullRefresh"

  s.license      = 'MIT'

  s.author       = { "aiyuelian" => "529670074@qq.com" }

  s.platform     = :ios, '6.0'

  s.source       = { :git => "https://github.com/aiyuelian/EGOTableViewPullRefresh.git", :commit => "d68bac2e04e3f003cf8f70642db2e2534a3eaf5a" }

  s.source_files  = 'EGOTableViewPullAction/Classes/*.{h,m}'

  s.resources = "EGOTableViewPullAction/Resources/*.png"

  s.frameworks = 'UIKit', 'Foundation','QuartzCore'

  s.requires_arc = true

end
