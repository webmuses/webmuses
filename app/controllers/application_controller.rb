class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale

  def set_locale
    default = admin_area? ? :en : I18n.default_locale
    I18n.locale = params[:locale] || default
  end

  def default_url_options(options={})
     { :locale => I18n.locale }
  end

  def admin_area?
    request.path.include?("/admin")
  end
end
