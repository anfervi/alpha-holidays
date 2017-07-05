class HolidayPolicy < ApplicationPolicy
  attr_reader :user, :holiday

  def initialize(user, holiday)
    @user = user
    @holiday = holiday
  end  

  class Scope
  	attr_reader :user, :scope

  	def initialize(user, scope)
  		@user = user
  		@scope = scope
  	end

    def resolve
    	if user.admin?
    		scope.all
    	else
    		scope.where(published: true)
    	end
    end
  end

  def validate?
  	user.admin? or user.manager?
  end

  def reject?
  	user.admin? or user.manager?
  end
end
