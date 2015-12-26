cask 'crashlytics' do
  version '2.6.25_419'
  sha256 'b671cbd7deacb00fbb9fe5b16dbef074ae094a0d80a54382eee7641b1f7fb063'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://ssl-download-crashlytics-com.s3.amazonaws.com/mac/builds/Crashlytics-#{version.sub(%r{.*_},'')}.zip"
  appcast 'https://ssl-download-crashlytics-com.s3.amazonaws.com/mac/version.xml',
          :sha256 => '39e2fdc58426b1771c42d26218de331494fdbabb91ad4df77cbb14357cf1a423'
  name 'Crashlytics'
  homepage 'https://crashlytics.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Crashlytics.app'
end
