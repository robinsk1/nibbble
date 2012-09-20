class Photo < ActiveRecord::Base
  image_accessor :image
  acts_as_voteable
  belongs_to :user
  attr_accessible :image, :title, :body
end
