CarrierWave.configure do |config|
config.fog_credentials = {
  # Configuration for Amazon S3
  :provider              => 'AWS',
  :aws_access_key_id     => ENV['AWS_ACCESS_KEY_ID'],
  :aws_secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
}
config.fog_directory     =  ENV['AWS_BUCKET_NAME']

compute = Fog::Compute.new(:provider => 'AWS', :aws_access_key_id => AWS_ACCESS_KEY_ID, :aws_secret_access_key => AWS_SECRET_ACCESS_KEY)

storage = Fog::Storage.new(:provider => 'AWS', :aws_access_key_id => AWS_ACCESS_KEY_ID, :aws_secret_access_key => AWS_SECRET_ACCESS_KEY)
end