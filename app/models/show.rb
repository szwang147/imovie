class Show < ApplicationRecord
  belongs_to :movie
  has_many :seats
  validates :movie_id, presence: true
  scope :recent, -> {order("timetable DESC")}
end
