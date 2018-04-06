class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def all_items
    @items = Item.all
    @items.to_a.delete_if{|item| item.user_id != current_user.id}
  end

  helper_method :all_items

  private

    # Redirect to users show view after sign in
    def after_sign_in_path_for(resource)
       user_path(resource.id)
    end
end
