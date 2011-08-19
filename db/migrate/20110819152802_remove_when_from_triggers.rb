class RemoveWhenFromTriggers < ActiveRecord::Migration
  def self.up
    remove_column :triggers, :when
  end

  def self.down
    add_column :triggers, :when, :datetime
  end
end
