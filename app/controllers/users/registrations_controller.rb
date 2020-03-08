# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :forbid_test_user, {only: [:edit,:update,:destroy]}

  protected
  # アカウント編集後、プロフィール画面に移動する
  def after_update_path_for(resource)
    user_path(id: current_user.id)
  end

  private
  def forbid_test_user
      if current_user.email == "test@example.com"
        flash[:notice] = "テストユーザーのため変更できません"
        redirect_to root_path
      end
  end
end
