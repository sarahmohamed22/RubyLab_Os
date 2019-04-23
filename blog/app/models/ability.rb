class Ability
  include CanCan::Ability

  def initialize(user)
      can :read, :all
    if user.present?  # additional permissions for logged in users (they can read their own posts)
      can [:edit, :destroy] [Article,Comment] ,user_id: user.id
    
    end
  end
end