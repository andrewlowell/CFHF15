class AddChildrenToRegistrants < ActiveRecord::Migration
  def change
    add_column :registrants, :children, :string
  end
end
