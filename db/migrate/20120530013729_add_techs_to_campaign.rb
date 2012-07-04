class AddTechsToCampaign < ActiveRecord::Migration
  def change
    add_column :campaigns, :techs, :string

  end
end
