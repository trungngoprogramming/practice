class Ability
  include CanCan::Ability

  def initialize user
    user ||= User.new
    if user.admin?
      can :manage, :all
    elsif user.member?
      can :manage, Post
      can :manage, Comment
    else
      byebug
      can :read, :all
    end
  end
end
