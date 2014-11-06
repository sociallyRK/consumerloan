class AddColumns2ToLoans < ActiveRecord::Migration
  def change
    add_column :loans, :hash_data, :hstore
  end
end
