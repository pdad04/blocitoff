class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

    # Redirect to users show view after sign in
    def after_sign_in_path_for(resource)
       users_profile_path(resource.id)
    end
end
