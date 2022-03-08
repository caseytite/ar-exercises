class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :hourly_rate, inclusion: {in: 40..200}
  validates :store_id, :numericality => { :greater_than => 0 }
end
