class SessionsController < Devise::SessionsController 
  
  prepend_before_filter :require_no_authentication, only: :create
  include Devise::Controllers::Helpers

  respond_to :json

  def create
    self.resource = warden.authenticate!(auth_options)
    sign_in(resource_name, resource)
    data = {
      token: self.resource.authentication_token,
      email: self.resource.email,
      user_id: self.resource.id
    }
    render json: data, status: 201
  end
end
