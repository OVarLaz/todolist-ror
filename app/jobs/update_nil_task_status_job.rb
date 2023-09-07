class UpdateNilTaskStatusJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Task.where(status: nil).update_all(status: false)
  end
end
