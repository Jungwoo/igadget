class RenameCompaniesTable < ActiveRecord::Migration
  def up
    rename_column :companies, :nationality, :country
  end

  def down
  end
end
