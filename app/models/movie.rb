class Movie < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :shows
  validates :title, presence: true

end
