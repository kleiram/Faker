Pod::Spec.new do |s|
  s.name             = 'Faker'
  s.version          = '0.1.0'
  s.summary          = 'Generate fake data'
  s.homepage         = 'https://github.com/kleiram/faker'
  s.license          = 'MIT'
  s.author           = { 'Ramon Kleiss' => 'ramon@apostle.nl' }
  s.source           = { :git => 'https://github.com/kleiram/faker.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/kleiram'

  s.platform     = :ios, '9.0'
  s.requires_arc = true
  s.source_files = 'Source/**/*.swift'
end
