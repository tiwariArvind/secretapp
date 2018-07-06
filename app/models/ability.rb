class Ability
  include CanCan::Ability

  class Ability
    include CanCan::Ability
    def initialize(user)
      user ||= User.new
      if user.admin?
        can :read, :all
      end
    end
  end
end
