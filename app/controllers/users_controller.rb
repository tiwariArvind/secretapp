class UsersController < ApplicationController
  def new
  end

  def index
    @user = User.all
  end

  def create
    # Add a field for foobar with registration page
    @user = User.new(user_params)
    @secret_code = params[:search]
    if @secret_code == "foobar"
      @user.save!
      redirect_to secret_codes_path
    else
      render 'new'
    end
  end

  def code_request
    # foobar is default secret code is attached with send email
    @secret_code = "foobar"
    @user = params[:email]
    if @secret_code.present?
      UserMailer.with(user: @user, secret_code: @secret_code ).welcome_email.deliver_later
      redirect_to secret_codes_path
    end
  end

  private

  def user_params
    params.require(:user).permit!#(:email, :password, :password_confirmation, :secret_code)
  end
end
