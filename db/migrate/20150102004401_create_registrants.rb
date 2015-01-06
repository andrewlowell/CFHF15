class CreateRegistrants < ActiveRecord::Migration
  def change
    create_table :registrants do |t|
      t.string :full_name
      t.string :email_address

      t.timestamps null: false
    end
  end
end
