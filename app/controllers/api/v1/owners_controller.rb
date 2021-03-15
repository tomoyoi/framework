class Api::V1::OwnersController < ApiController
  def index
    Rails.logger.info "######### ####owner start"
    about = Owner.first
    ActionController::Base.helpers.sanitize(about.comment)
    render json: about
  end
end
