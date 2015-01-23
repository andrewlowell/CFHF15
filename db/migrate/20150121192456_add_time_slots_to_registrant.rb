class AddTimeSlotsToRegistrant < ActiveRecord::Migration
  def change
    add_column :registrants, :time_slot_1, :integer
    add_column :registrants, :time_slot_2, :integer
    add_column :registrants, :time_slot_3, :integer
    add_column :registrants, :time_slot_4, :integer
    add_column :registrants, :time_slot_5, :integer
  end
end
