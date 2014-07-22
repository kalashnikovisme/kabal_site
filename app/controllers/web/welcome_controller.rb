class Web::WelcomeController < Web::ApplicationController
  def index
    @number = Number.new
  end
end
