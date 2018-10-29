Pod::Spec.new do |spec|
    spec.name                       = 'AudioKit'
    spec.version                    = '4.5.3'
    spec.platform                   = :ios
    spec.license                    = { :type => 'MIT', :file => 'LICENSE' }
    spec.homepage                   = 'http://audiokit.io/'
    spec.authors                    = { 'Aurelius Prochazka' => 'audiokit@audiokit.io' }
    spec.summary                    = 'Open-source audio synthesis, processing, & analysis platform.'
    spec.static_framework           = true
    spec.source                     = { :http => 'https://github.com/donuts-kris/AudioKit/raw/develop/AudioKit.framework.zip' }
    spec.framework                  = 'AVFoundation'

    s.subspec 'Core' do |cs|
        cs.ios.source_files         = 'iOS/AudioKit.framework/Headers/*.h'
        cs.ios.public_header_files  = 'iOS/AudioKit.framework/Headers/*.h'
        cs.ios.vendored_frameworks  = 'iOS/AudioKit.framework'
    end
end
