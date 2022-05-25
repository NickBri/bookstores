class SecuredController < ApplicationController
  before_action :authorize_request
  protect_from_forgery with: :null_session

  private

  def authorize_request
    AuthorizationService.new(request.headers).authenticate_request!
  rescue JWT::VerificationError, JWT::DecodeError
    # render json: { errors: ['Not Authenticated'] }, status: :unauthorized
    redirect_to :controller => 'dashboard', :action => 'index'
  end
end