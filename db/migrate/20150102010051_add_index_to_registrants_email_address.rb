class AddIndexToRegistrantsEmailAddress < ActiveRecord::Migration
  def change
    add_index :registrants, :email_address, unique: true
  end
end
