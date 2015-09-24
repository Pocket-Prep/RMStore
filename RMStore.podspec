Pod::Spec.new do |s|
  s.name = 'RMStore'
  s.version = '0.7.1'
  s.license = 'Apache 2.0'
  s.summary = 'A lightweight iOS library for In-App Purchases that adds blocks and notifications to StoreKit, plus verification, persistence and downloads.'
  s.homepage = 'https://github.com/robotmedia/RMStore'
  s.author = 'Hermes Pique'
  s.social_media_url = 'https://twitter.com/hpique'
  s.source = { :git => 'https://github.com/robotmedia/RMStore.git', :tag => "v#{s.version}" }
  s.platform = :ios, '7.0'
  s.frameworks = 'StoreKit'
  s.requires_arc = true

  s.subspec 'Core' do |core|
    core.source_files = 'RMStore/*.{h,m}'
  end

  s.subspec 'AppReceiptVerifier' do |arv|
    arv.dependency 'RMStore/Core'
    arv.platform = :ios, '7.0'
    arv.source_files = 'RMStore/Optional/RMStoreAppReceiptVerifier.{h,m}', 'RMStore/Optional/RMAppReceipt.{h,m}'
    arv.dependency 'OpenSSL', '~> 1.0'
  end

end
