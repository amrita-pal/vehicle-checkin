class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.text :address_line
      t.string :state
      t.string :district
      t.integer :pin
      t.string :landmark
      t.string :address_type

      t.timestamps
    end
  end
end
