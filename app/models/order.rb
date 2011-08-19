class Order < ActiveRecord::Base
end

# == Schema Information
#
# Table name: orders
#
#  id             :integer         not null, primary key
#  customer_email :string(255)
#  total          :integer
#  active         :boolean
#  created_at     :datetime
#  updated_at     :datetime
#

