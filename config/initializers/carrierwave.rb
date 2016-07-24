# CarrierWave.configure do |config|
# config.fog_credentials = {
#   # Configuration for Amazon S3
#   :provider              => 'AWS',
#   :aws_access_key_id     => ENV['AWS_ACCESS_KEY_ID'],
#   :aws_secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
# }


# end

CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => Rails.configuration.aws_access_key_id,
    :aws_secret_access_key  => Rails.configuration.aws_secret_access_key,
  }
  config.fog_directory     =  ENV['AWS_BUCKET_NAME']
end