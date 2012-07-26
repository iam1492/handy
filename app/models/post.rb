class Post < ActiveRecord::Base
  attr_accessible :description, :title
  belongs_to :user

  validate :title, :presence => true, :length => { :maximum => 80 }
  validate :description, :length => { :maximum => 180 }
  validate :user_id, :presence => true
end
