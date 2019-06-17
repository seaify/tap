class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :locations, as: :locationable, dependent: :destroy
  has_many :user_projects, dependent: :destroy
  has_many :projects, through: :user_projects
end
