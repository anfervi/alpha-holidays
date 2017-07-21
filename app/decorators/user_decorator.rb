class UserDecorator < Draper::Decorator
  decorates :user

  def self.available_roles
    User.roles.collect { |s| [s[0].titleize, s[0]] }
  end
end
