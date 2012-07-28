class Photo < ActiveRecord::Base
  attr_accessible :image
  has_attached_file :image
  #belongs_to :post
end
