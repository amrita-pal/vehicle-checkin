class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :vehicle_no
      t.string :vehicle_type

      t.timestamps
    end
  end
end
