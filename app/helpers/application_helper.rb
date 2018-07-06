module ApplicationHelper

  def users_name
    @users = User.order('email').all
  end
end
