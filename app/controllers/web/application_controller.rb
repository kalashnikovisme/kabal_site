class Web::ApplicationController < ApplicationController
  include AuthHelper

  def check_signed_in
    unless signed_in?
      redirect_to '/404'
    end
  end
end
