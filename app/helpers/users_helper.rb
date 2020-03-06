module UsersHelper

  def user_icon
    if current_user.image?
      image_tag current_user.image.thumb100.url
    else
      content_tag(:i,"", class: ["fa", "fa-user"])
    end
  end
end
