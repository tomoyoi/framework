class Api::V1::ServicesController < ApiController
  def index
    @services = Service.select(:id, :title, :description, :image)
  end
end
