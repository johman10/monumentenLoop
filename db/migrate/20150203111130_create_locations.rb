class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :postal_code
      t.string :street
      t.string :city
      t.string :number

      t.timestamps
    end
  end
end
