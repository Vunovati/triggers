require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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

