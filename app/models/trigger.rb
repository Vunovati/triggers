class Trigger < ActiveRecord::Base
  belongs_to :setting
  after_create :update_crontab
  after_destroy :remove_from_crontab

  def get_action
    if action == "delete_old"
      "deactivate_old_expensive_scope"
    else
      "send_mail"
    end
  end

  def update_crontab
    system "bundle exec whenever --update-crontab triggerNo#{id}InSettingNo#{setting.id}"
  end

  def add_to_crontab
    system "bundle exec whenever --write-crontab triggerNo#{id}InSettingNo#{setting.id}"
  end

  def remove_from_crontab
    system "bundle exec whenever --clear-crontab triggerNo#{id}InSettingNo#{setting.id}"
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

