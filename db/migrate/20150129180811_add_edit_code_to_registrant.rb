class AddEditCodeToRegistrant < ActiveRecord::Migration
  def change
    add_column :registrants, :edit_code, :string
  end
end
