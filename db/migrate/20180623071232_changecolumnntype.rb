class Changecolumnntype < ActiveRecord::Migration[5.2]
  def change
  	remove_column :profiles, :DOB
  	add_column :profiles, :dob, :date
  end
end
