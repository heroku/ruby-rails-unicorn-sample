$stdout.sync = true

ActiveSupport::Notifications.subscribe(/rack.queue-metrics/) do |*args|
  puts(ActiveSupport::Notifications::Event.new(*args).inspect)
end
