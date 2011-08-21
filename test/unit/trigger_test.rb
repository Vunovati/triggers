require 'test_helper'

class TriggerTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end



# == Schema Information
#
# Table name: triggers
#
#  id             :integer         not null, primary key
#  setting_id     :integer
#  action         :string(255)
#  total_treshold :integer
#  created_at     :datetime
#  updated_at     :datetime
#  time_treshold  :integer
#  interval       :integer
#

