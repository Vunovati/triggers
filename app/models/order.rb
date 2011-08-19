class Order < ActiveRecord::Base
attr_accessible :customer_email, :total, :active, :created_at, :updated_at 

  scope :active, where(:active => true)
  scope :inactive, where(:active => false)
  scope :expensive, lambda {|treshold| {:conditions => ["total > ?", treshold]}}  
  scope :cheap, lambda {|treshold| {:conditions => ["total < ?", treshold]}}
  scope :old, lambda {|treshold| {:conditions => ["updated_at < ?", treshold]}}   

def deactivate
  self.update_attribute(:active, false)
end

def activate
  self.update_attribute(:active, true)
end

def self.deactivate_old_scope(limit = 7.days.ago)
  self.old(limit).each {|order| order.deactivate}
end

def self.deactivate_old_expensive_scope(limit1 = 7.days.ago, limit2 = 10000)
  self.expensive(limit2).old(limit1).each {|order| order.deactivate}
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

