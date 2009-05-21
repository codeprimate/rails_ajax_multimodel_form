class Product < ActiveRecord::Base
  has_many :assets, :dependent => :destroy
  
  accepts_nested_attributes_for :assets, :allow_destroy => true,
    :reject_if => proc { |attributes| attributes['uploaded_data'].blank? && attributes['_delete'].blank? }
end
