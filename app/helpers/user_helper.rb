# app/helpers/user_helper.rb
module UserHelper
  def render_avatar
    content_tag :dropdown do
      if current_user.present? && current_user.avatar?
        image_tag(current_user.avatar.url(:thumb))
      else
        image_tag('/assets/global/images/avatars/user1.png')
      end
    end
  end
end
