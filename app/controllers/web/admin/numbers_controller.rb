class Web::Admin::NumbersController < Web::Admin::ApplicationController
  def index
    @numbers = ::NumberDecorator.decorate_collection Number.all
  end

  def show
    @number = Number.find params[:id]
  end

  def new
    @number = Number.new
  end

  def edit
    @number = Number.find params[:id]
  end

  def create
    @number = Number.new params[:number]
    if @number.save
      redirect_to admin_numbers_path, flash: :success
    else
      render action: :new, flash: :error
    end
  end

  def update
    @number = Number.find params[:id]
    if @number.update_attributes params[:number]
      redirect_to admin_numbers_path, flash: :success
    else
      render action: :edit, flash: :error
    end
  end

  def destroy
    @number = Number.find params[:id]
    @number.destroy
    redirect_to admin_numbers_path, flash: :success
  end
end
