class MessageProducerWorker < ActiveJob::Base
  queue_as :default

  def perform(*args)
    100.times { Rails.logger.info "lololololol" }
  end
end
