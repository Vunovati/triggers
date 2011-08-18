class Setting < ActiveRecord::Base
  validates :name, :presence => true  
  has_many :triggers, :dependent => :destroy
end

# == Schema Information
#
# Table name: settings
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

