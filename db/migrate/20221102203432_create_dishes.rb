class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.timestamps
      t.string :name
    end
  end
end
