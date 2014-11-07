class AddPrintviewToLoans < ActiveRecord::Migration
  def change
      change_table :loans do |t|
        t.string :printview, array: true
      end
  end
end
