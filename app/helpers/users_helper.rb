module UsersHelper

  def user_icon
    if @user.image?
      image_tag @user.image.thumb100.url
    else
      content_tag(:i,"", class: ["fa", "fa-user"])
    end
  end
end
