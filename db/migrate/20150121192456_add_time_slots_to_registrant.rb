class AddTimeSlotsToRegistrant < ActiveRecord::Migration
  def change
    add_column :registrants, :time_slot_1, :string
    add_column :registrants, :time_slot_2, :string
    add_column :registrants, :time_slot_3, :string
    add_column :registrants, :time_slot_4, :string
    add_column :registrants, :time_slot_5, :string
  end
end
