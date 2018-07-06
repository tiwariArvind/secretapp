class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :secret_code

  def admin?
    has_role?(:admin)
  end
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
end
