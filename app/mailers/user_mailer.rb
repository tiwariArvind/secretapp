class UserMailer < ApplicationMailer

  def welcome_email
    @user = params[:user]
    @secret_code  = params[:secret_code]
    mail(to: @user, subject: 'Welcome to My Awesome Site')
  end
end
