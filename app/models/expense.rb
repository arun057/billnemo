class Expense < ActiveRecord::Base
  attr_accessible :amount, :bill_id, :deleted, :name, :split, :split_type, :userexpenses_attributes
  belongs_to :bill
  has_many :userexpenses
  accepts_nested_attributes_for :userexpenses
end
