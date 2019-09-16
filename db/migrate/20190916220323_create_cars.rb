class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :model
      t.string :country
      t.int :vin

      t.timestamps
    end
  end
end
