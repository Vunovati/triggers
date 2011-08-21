set :environment, "development"

require File.expand_path('../config/environment', __FILE__) # so we could use our database

set :output, "cron_log.log"

@trigger = Trigger.order("updated_at").last
@interval = @trigger.interval
@time_treshold = @trigger.time_treshold
@total_treshold = @trigger.total_treshold
@action = @trigger.get_action

every @interval.minutes do
   runner "Order.#{@action}(#{@time_treshold}.minutes.ago, #{@total_treshold})"
end

#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
