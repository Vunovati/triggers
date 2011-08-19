class AddTimeTresholdToTriggers < ActiveRecord::Migration
  def self.up
    add_column :triggers, :time_treshold, :integer
  end

  def self.down
    remove_column :triggers, :time_treshold
  end
end
