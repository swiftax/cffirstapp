class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    can :manage, User, id: user.id
    if user.has_role? :admin
  	can :manage, :all
	else
 	can :read, :all
	end
  end
end
