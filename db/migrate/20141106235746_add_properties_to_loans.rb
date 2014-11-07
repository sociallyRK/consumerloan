class AddPropertiesToLoans < ActiveRecord::Migration
  def change
    add_column :loans, :properties, :hstore
  end
end
