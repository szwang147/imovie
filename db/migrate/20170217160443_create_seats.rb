class CreateSeats < ActiveRecord::Migration[5.0]
  def change
    create_table :seats do |t|
      t.boolean :is_paid, default: false
      t.integer :user_id
      t.integer :show_id
      t.string :seat_name
      t.timestamps
    end
  end
end
