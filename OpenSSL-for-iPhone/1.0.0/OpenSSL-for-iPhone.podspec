Pod::Spec.new do |s|
  s.name         = "OpenSSL-for-iPhone"
  s.version      = "1.0.0"
  s.summary      = "OpenSSL for iOS and tvOS"
  s.description  = "Provides device and simulator builds for OpenSSL 1.1.1d on iOS and tvOS"
  s.homepage     = "https://github.com/dlowder-salesforce/OpenSSL-for-iPhone"
  s.license	     = { :type => 'OpenSSL (OpenSSL/SSLeay)', :file => 'LICENSE.txt' }
  s.source       = { :git => "https://github.com/dlowder-salesforce/OpenSSL-for-iPhone.git" }
  s.platforms    = { :ios => "8.0", :tvos => "12.0" }
  s.requires_arc = false
  s.default_subspec = 'Static'

  s.subspec 'Static' do |sp|
    sp.ios.deployment_target = '8.0'
    sp.ios.source_files        = 'include/openssl/*.h'
    sp.ios.public_header_files = 'include/openssl/*.h'
    sp.ios.header_dir          = 'openssl'
    sp.ios.preserve_paths      = 'lib/libcrypto.a', 'lib/libssl.a'
    sp.ios.vendored_libraries  = 'lib/libcrypto.a', 'lib/libssl.a'

    sp.tvos.deployment_target = '12.0'
    sp.tvos.source_files        = 'include/openssl/*.h'
    sp.tvos.public_header_files = 'include/openssl/*.h'
    sp.tvos.header_dir          = 'openssl'
    sp.tvos.preserve_paths      = 'lib/libcrypto-tvOS.a', 'lib/libssl-tvOS.a'
    sp.tvos.vendored_libraries  = 'lib/libcrypto-tvOS.a', 'lib/libssl-tvOS.a'
  end

end
