class Web::ApplicationController < ApplicationController
  include AuthHelper

  def check_signed_in
    unless signed_in?
      redirect_to new_session_path
    end
  end

  if Rails.env.production?
    rescue_from ActionController::RoutingError, ActionView::MissingTemplate, ActiveRecord::RecordNotFound, NoMethodError do |exception|
      Rails.logger.warn "ERROR MESSAGE: #{exception.message}"
      redirect_to not_found_errors_path
    end
  end
end
