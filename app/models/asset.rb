class Asset < ActiveRecord::Base
  belongs_to :product
  has_attachment :storage => :file_system, :path_prefix => 'public/assets',
    :thumbnails => {:large => "465x465>",  :bigthumb => '256x256>', :thumb => '128x128>', :tiny => '32x32>>' }, :max_size=>1000.megabytes
end
