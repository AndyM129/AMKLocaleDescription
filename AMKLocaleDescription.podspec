#
# Be sure to run `pod lib lint AMKLocaleDescription.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'AMKLocaleDescription'
    s.version          = '0.1.0'
    s.summary          = 'A short description of AMKLocaleDescription.'
    s.description      =  <<-DESC
                            TODO: A pod of AMKLocaleDescription.
                          DESC
    s.homepage         = 'https://github.com/AndyM129/AMKLocaleDescription'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Andy__M' => 'andy_m129@baidu.com' }
    s.source           = { :git => 'https://github.com/AndyM129/AMKLocaleDescription.git', :tag => s.version.to_s }
    s.ios.deployment_target = '8.0'
    s.source_files = [
        'AMKLocaleDescription/Classes/*.{h,m}',
    ]
    s.public_header_files = [
        'AMKLocaleDescription/Classes/*.h'
    ]
end

