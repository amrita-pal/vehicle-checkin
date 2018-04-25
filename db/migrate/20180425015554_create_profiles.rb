class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :gemder
      t.string :DOB
      t.string :age

      t.timestamps
    end
  end
end
