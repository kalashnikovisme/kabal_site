class Web::Karamzin::WelcomeController < Web::Karamzin::ApplicationController
  def index
    @text = Text.new
  end
end
