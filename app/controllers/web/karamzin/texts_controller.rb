class Web::Karamzin::TextsController < Web::Karamzin::ApplicationController
  def show
    @text = Text.new params[:text]
  end
end
