module Raven
  abstract class Transport
    property configuration : Configuration

    def initialize(@configuration)
    end

    abstract def send_event(auth_header, data, **options)
    abstract def send_feedback(event_id, data)
  end
end

require "./transports/*"
