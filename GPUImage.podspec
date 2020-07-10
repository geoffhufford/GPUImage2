Pod::Spec.new do |s|
  s.name     = 'GPUImage'
  s.version  = '2.0.1'
  s.license  = 'BSD'
  s.summary  = 'GPUImage 2 is a BSD-licensed Swift framework for GPU-accelerated video and image processing.'
  s.homepage = 'https://github.com/BradLarson/GPUImage2'
  s.author   = { 'Brad Larson' => 'contact@sunsetlakesoftware.com' }
  s.source = { :git => 'https://github.com/Jaesung-Jung/GPUImage2', :tag => s.version.to_s }

  s.source_files = 'framework/Source/**/*.swift'
  s.exclude_files = 'framework/Source/Linux/**/*.swift'
  s.resources = 'framework/Source/**/*.{png,fsh,vsh}'
  s.requires_arc = true

  s.ios.deployment_target = '8.0'
  s.ios.exclude_files = 'framework/Source/**/{OpenGLContext-OpenGL,RenderView-Cocoa,ConvertedShaders_GL}.swift'

  s.osx.deployment_target = '10.9'
  s.osx.exclude_files = 'framework/Source/**/{OpenGLContext-OpenGLES,RenderView-UIKit,ConvertedShaders_GLES}.swift'
end
