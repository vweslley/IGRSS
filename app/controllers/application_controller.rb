class ApplicationController < ActionController::Base

  #Habilita o Pundit (Autorização)
  include Pundit
  #Gerencia Erros do Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  #Layout
  layout :layout_by_resource

  private

  def user_not_authorized
    flash[:alert] = "Você não esta autorizado a executar esta ação."
    redirect_to(request.referrer || root_path)
  end

  def layout_by_resource
    if devise_controller? && resource_name == :admin
      "backoffice_devise"
    else
      "application"
    end
  end
end
