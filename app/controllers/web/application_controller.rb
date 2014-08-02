class Web::ApplicationController < ApplicationController
  before_filter :set_locale
  include AuthHelper

  def check_signed_in
    unless signed_in?
      redirect_to new_session_path
    end
  end

  def set_locale
    if params[:locale]
      if I18n.available_locales.include? params[:locale].to_sym
        I18n.locale = params[:locale]
        session[:locale] = params[:locale]
      else
        I18n.locale = I18n.default_locale
      end
    else
      I18n.locale = session[:locale]
    end
  end

  if Rails.env.production?
    rescue_from ActionController::RoutingError, ActionView::MissingTemplate, ActiveRecord::RecordNotFound, NoMethodError do |exception|
      Rails.logger.warn "ERROR MESSAGE: #{exception.message}"
      redirect_to not_found_errors_path
    end
  end
end
