require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|

    if Rails.env.production?
        config.storage :fog
        config.fog_provider = 'fog/aws'
        config.fog_directory  = 'rails-quiet-photo'
        config.fog_credentials = {
        provider: 'AWS',
        aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
        aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
        region: ENV['AWS_DEFAULT_REGION']
        }
    else
        config.storage :file
    end
end
# 日本語ファイル名の設定
CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/ 
