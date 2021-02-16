class Api::V1::ServicesController < ApiController
  def index
    services = Service.all
  end

  def show
    service = Service.find(id)
  end

  def create
    service = Service.find(id)
  end

  def update
    service = Service.find(id)
  end

  def destroy
    service = Service.find(id)
  end
end
