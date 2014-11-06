class AddColumnsToLoans < ActiveRecord::Migration
  def change
    add_column :loans, :link, :string
  end
end
