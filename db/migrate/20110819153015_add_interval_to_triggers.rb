class AddIntervalToTriggers < ActiveRecord::Migration
  def self.up
    add_column :triggers, :interval, :integer
  end

  def self.down
    remove_column :triggers, :interval
  end
end
