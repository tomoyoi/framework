class Api::V1::OwnersController < ApiController
  def index
    about = Owner.select(:name, :email, :address, :comment)
    render json: about
  end
end
