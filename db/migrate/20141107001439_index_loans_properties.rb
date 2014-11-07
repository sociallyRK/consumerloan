class IndexLoansProperties < ActiveRecord::Migration
  def up
    execute "CREATE INDEX loans_properties ON loans USING GIN(properties)"
  end

  def down
    execute "DROP INDEX loans_properties"
  end
end
