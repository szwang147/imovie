class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :show_id
      t.integer :total_price
      t.boolean :is_paid, default: false
      t.timestamps
    end
  end
end
