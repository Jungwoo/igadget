class CreateTechnologies < ActiveRecord::Migration
  def change
    create_table :technologies do |t|
      t.string :category
      t.string :title
      t.text :description
      t.references :campaign

      t.timestamps
    end
    add_index :technologies, :campaign_id
  end
end
