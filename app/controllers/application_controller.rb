class ApplicationController < ActionController::Base
  include LocalesHelper
  protect_from_forgery
end
