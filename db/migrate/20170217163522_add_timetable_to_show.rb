class AddTimetableToShow < ActiveRecord::Migration[5.0]
  def change
    add_column :shows, :timetable, :datetime
  end
end
