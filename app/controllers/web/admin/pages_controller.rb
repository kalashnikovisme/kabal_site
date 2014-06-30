class Web::Admin::PagesController < Web::Admin::ApplicationController
  def index
    @pages = Page.all
  end

  def show
    @page = Page.find params[:id]
    @users = UserDecorator.decorate_collection User.with(last_page_id: params[:id])
  end

  def new
    @page = Page.new
  end

  def edit
    @page = Page.find params[:id]
  end

  def create
    @page = Page.new params[:page]
    if @page.save
      redirect_to admin_pages_path, flash: :success
    else
      render action: :new, flash: :error
    end
  end

  def update
    @page = Page.find params[:id]
    if @page.update_attributes params[:page]
      redirect_to admin_pages_path, flash: :success
    else
      render action: :edit, flash: :error
    end
  end

  def destroy
    @page = Page.find params[:id]
    @page.destroy
    redirect_to admin_pages_path, flash: :success
  end
end
