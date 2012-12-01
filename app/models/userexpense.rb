class Userexpense < ActiveRecord::Base
  attr_accessible :split, :split_type, :user_id, :expense_id
  belongs_to :user
  belongs_to :userexpense
end
