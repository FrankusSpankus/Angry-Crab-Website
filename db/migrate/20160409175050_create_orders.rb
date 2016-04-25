class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.text :order_detail
      t.string :pickup_time
      t.string :time

      t.timestamps null: false
    end
  end
end
