class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :campaign

      t.timestamps
    end
    add_index :comments, :campaign_id
  end
end
