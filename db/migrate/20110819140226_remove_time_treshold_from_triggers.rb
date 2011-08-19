class RemoveTimeTresholdFromTriggers < ActiveRecord::Migration
  def self.up
    remove_column :triggers, :time_treshold
  end

  def self.down
    add_column :triggers, :time_treshold, :datetime
  end
end
