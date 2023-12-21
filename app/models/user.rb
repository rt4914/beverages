class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validate :check_user_count, on: :create
  private

  def check_user_count
    errors.add(:base, 'Only one user is allowed') if User.count >= 1
  end
end
