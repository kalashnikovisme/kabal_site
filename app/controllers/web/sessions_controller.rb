class Web::SessionsController < Web::ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_login params[:user][:login]
    if @user && @user.authenticate(params[:user][:password])
      sign_in @user
      redirect_to admin_path, flash: :success
    else
      @user = User.new params[:user]
      flash[:notice] = t('.wrong_login')
      render action: :new
    end
  end

  def destroy
    sign_out
    redirect_to :root
  end
end
