Pod::Spec.new do |s|
  s.name             = 'CZCTestPod'
  s.version          = '0.0.3.Binary'
  s.summary          = '测试'
  s.homepage         = 'https://github.com/2360219637/CZCTestPod'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '2360219637@qq.com' => 'chenzc@gegejia.com' }
  s.source           = { :git => 'https://github.com/2360219637/CZCTestPod.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  
  if s.version.to_s.include?'Binary'
      puts '-------------------------------------------------------------------'
      puts 'Notice:ABC is binary now'
      puts '-------------------------------------------------------------------'
      s.prepare_command = '/bin/bash build_lib.sh'
      s.source_files = 'Pod/Products/include/**'
      s.ios.vendored_libraries = 'Pod/Products/lib/*.a'
      s.public_header_files = 'Pod/Products/include/*.h'
  else
      s.source_files = 'CZCTestPod/Classes/**/*'
  end
  
end
