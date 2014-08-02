class Web::PagesController < Web::ApplicationController
  def show
    @page = Page.where(slug: params[:slug], language: I18n.locale).first
  end
end
