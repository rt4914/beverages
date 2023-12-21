# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :check_user_count, only: [:create]

  private

  def check_user_count
    if User.count >= 1
      redirect_to root_path, alert: 'Registration is not allowed. Only one user is allowed.'
    end
  end
end
