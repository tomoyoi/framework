class Api::V1::ServicesController < ApiController
  def index
    @services = Service.all
    Rails.logger.info "############# #{@services.inspect}"
  end
end
