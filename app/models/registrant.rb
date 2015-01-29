class Registrant < ActiveRecord::Base
  #attr_accessor :full_name, :email_address, :time_slot_1, :time_slot_2, :time_slot_3, :time_slot_4, :time_slot_5
  
  before_save { email_address.downcase! }
  validates :full_name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email_address, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end