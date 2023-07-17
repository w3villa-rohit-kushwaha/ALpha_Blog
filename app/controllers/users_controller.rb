class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to  login_path, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  def login
  end

  def authenticate
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to posts_path, notice: 'Logged in successfully.'
    else
      flash.now[:alert] = 'Invalid email or password.'
      render :login
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to new_user_path, notice: 'Logged out successfully.'
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
