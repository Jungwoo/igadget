class ChangeTechnologiesTable < ActiveRecord::Migration
  def up
    drop_table :technologies
    
    create_table :companies do |t|
      t.string :nationality
      t.string :name
      t.string :techs
      t.string :homepage
      t.string :contact_email_addr
      t.string :contact_phone_call
    end
    
  end

  def down
  end
end
