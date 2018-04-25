class AddColumnToFlatOwnerships < ActiveRecord::Migration[5.2]
  def change
    add_column :flat_ownerships, :owonership_type, :string
    add_column :flat_ownerships, :tenure_start, :date
    add_column :flat_ownerships, :tenure_end, :date
  end
end
