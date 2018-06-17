class TimeSlot < ApplicationRecord
  attr_accessor :due_at
  date_time_attribute :due_at

  has_many :appointments

end
