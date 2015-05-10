class RegistrationsController < ApplicationController

  prepend_before_filter :require_no_authentication, only: :create
  include Devise::Controllers::Helpers

  respond_to :json

  def create
    user = User.new(user_params)
    if user.save
      data = {
        user_token: user.authentication_token,
        user_email: user.email
      }
      render json: data, status: 201
    else
      warden.custom_failure!
      render json: user.errors, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :username)
  end
end
