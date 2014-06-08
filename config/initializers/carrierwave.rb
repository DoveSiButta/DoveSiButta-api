CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',       # required
      :aws_access_key_id      => ENV["S3_ACCESS"],       # required
      :aws_secret_access_key  => ENV["S3_SECRET"]       # required
      #:region                 => 'eu-west-1'
  }
  config.fog_directory  = 'dovesibutta' # required
  # config.fog_public     = false                                   # optional, defaults to true
  # config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end