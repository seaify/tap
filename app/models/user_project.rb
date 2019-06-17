# == Schema Information
#
# Table name: user_projects
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  project_id :bigint           not null
#  role_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserProject < ApplicationRecord
  belongs_to :user
  belongs_to :project
  belongs_to :role
end
