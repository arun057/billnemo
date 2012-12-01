class Bill < ActiveRecord::Base
  attr_accessible :bill_date, :name, :total_items, :total_users, :type_id, :user_id, :expenses_attributes
  has_many :expenses
  accepts_nested_attributes_for :expenses
end
