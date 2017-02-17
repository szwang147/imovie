class Show < ApplicationRecord
  belongs_to :movie
  has_many :seats

  scope :recent, -> {order("timetable DESC")}
end
