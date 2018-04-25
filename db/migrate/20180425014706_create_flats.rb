class CreateFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :flats do |t|
      t.string :flat_no
      t.string :capacity
      t.string :ownership_type
      t.string :tenure_star

      t.timestamps
    end
  end
end
