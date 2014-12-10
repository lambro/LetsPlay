class SessionsController < Devise::SessionsController

    def new
      
    end

    def create
      self.resource = warden.authenticate!(auth_options)
          set_flash_message(:notice, :signed_in) if is_flashing_format?
          sign_in(resource_name, resource)
          yield resource if block_given?
          respond_with resource, location: "/letsplay/home"
    end
end