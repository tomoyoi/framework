class Api::V1::TasksController < ApiController
  def index
    Rails.logger.info "######### ####start"
    tasks = Task.select(:id, :title, :description, :image)
    render json: tasks
  end
end
