class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :ordered_by
      t.string :quantity
      t.text :special_instructions
      t.references :snack
      t.timestamps
    end
  end
end
