class Trigger < ActiveRecord::Base
  belongs_to :setting
end

# == Schema Information
#
# Table name: triggers
#
#  id             :integer         not null, primary key
#  setting_id     :integer
#  when           :datetime
#  action         :string(255)
#  time_treshold  :datetime
#  total_treshold :integer
#  created_at     :datetime
#  updated_at     :datetime
#

