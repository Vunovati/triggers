class CreateTriggers < ActiveRecord::Migration
  def self.up
    create_table :triggers do |t|
      t.references :setting
      t.datetime :when
      t.string :action
      t.datetime :time_treshold
      t.integer :total_treshold

      t.timestamps
    end
  end

  def self.down
    drop_table :triggers
  end
end
