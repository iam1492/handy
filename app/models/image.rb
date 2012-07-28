class Image < ActiveRecord::Base
  attr_accessible :image, :image_file_name
  has_attached_file :image

  belongs_to :post
end
