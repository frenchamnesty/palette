require 'carrierwave/orm/activerecord'
require 'carrierwave'
config.active_record.raise_in_transactional_callbacks = true
CarrierWave.configure do |config|
 config.root = Rails.root
end