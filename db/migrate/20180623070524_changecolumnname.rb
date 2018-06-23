class Changecolumnname < ActiveRecord::Migration[5.2]
  def change
  	rename_column :profiles, :gemder, :gender
  end
end
