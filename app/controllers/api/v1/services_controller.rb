class Api::V1::ServicesController < ApiController
  def index
    @services = Service.all
  end
end
