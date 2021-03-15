class Api::V1::ServicesController < ApiController
  def index
    Rails.logger.info "######### ####start"
    @services = Service.all
    Rails.logger.info "######### #{@services.inspect}"
    @services = Service.select(:id, :title, :description, :image)
    Rails.logger.info "######### #{@services.inspect}"
    raise
  end
end
