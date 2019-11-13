class CreateCupcakes < ActiveRecord::Migration[6.0]
  def change
    create_table :cupcakes do |t|
      t.string :name
      t.string :description
      t.integer :calorie_count
      t.float :price

      t.timestamps
    end
  end
end
