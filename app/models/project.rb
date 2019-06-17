class Project < ApplicationRecord
  has_many :locations, as: :locationable, dependent: :destroy
  has_many :user_projects, dependent: :destroy
  has_many :users, through: :user_projects
  has_many :notification_templates, dependent: :destroy
end
