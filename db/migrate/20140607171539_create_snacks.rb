class CreateSnacks < ActiveRecord::Migration
  def change
    create_table :snacks do |t|
      t.text :name
      t.string :price
      t.text :provider
      t.timestamps
    end
  end
end
