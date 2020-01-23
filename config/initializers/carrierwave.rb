require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

if Rails.env.production?
    CarrierWave.configure do |config|
        config.storage :fog
        config.fog_provider = 'fog/aws'
        config.fog_directory  = '' # 作成したS3バケット名入力（例 s3-rails-image-uploader）
        config.fog_credentials = {
        provider: 'AWS',
        aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
        aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
        region: ENV['AWS_DEFAULT_REGION'],
        path_style: true
        }

    end
    # 日本語ファイル名の設定
    CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/ 
end