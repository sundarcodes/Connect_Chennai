class HelpRequest < ActiveRecord::Base
  validates :name, presence: true
  validates :street, presence: true
  validates :locality, presence: true
  validates :pincode, presence: true
  validates :need_of_hour, presence: true
end
