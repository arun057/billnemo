class Bill < ActiveRecord::Base
  attr_accessible :bill_date, :name, :total_items, :total_users, :type_id, :user_id
end
