class Movie < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :shows
end
