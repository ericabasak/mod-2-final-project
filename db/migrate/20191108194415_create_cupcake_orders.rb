class CreateCupcakeOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :cupcake_orders do |t|
      t.integer :user_id
      t.integer :cupcake_id
      t.integer :count
      t.string :date

      t.timestamps
    end
  end
end
