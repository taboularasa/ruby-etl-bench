require 'bunny'

class MessageProducerWorker < ActiveJob::Base
  queue_as :default

  def perform(*args)
    conn = Bunny.new(:automatically_recover => false)
    conn.start

    ch   = conn.create_channel
    q    = ch.queue("hello")

    ch.default_exchange.publish(message, :routing_key => q.name)

    Rails.logger.info " message sent"

    conn.close
  end

  def message
    File.readlines("spec/support/shipment_event.json").join
  end
end
