# HolidayPolicy
class HolidayPolicy < ApplicationPolicy
  attr_reader :user, :holiday

  def initialize(user, holiday)
    @user = user
    @holiday = holiday
  end

  # Scope
  class Scope < Scope
    attr_reader :user, :scope

  	def initialize(user, holiday)
  		@user = user
  		@authorizable = holiday
  	end

    def resolve
      if user.admin?
    		scope.all
    	else
    		scope.where(published: true)
      end
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def new?
    true
  end

  def update?
    true
  end

  def edit?
    true
  end

  def destroy?
    true
  end

  def validate?
  	user.admin? || user.manager?
  end

  def reject?
  	user.admin? || user.manager?
  end
end
