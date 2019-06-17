# == Schema Information
#
# Table name: notification_templates
#
#  id         :bigint           not null, primary key
#  name       :string
#  project_id :bigint           not null
#  role_id    :bigint           not null
#  context    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class NotificationTemplate < ApplicationRecord
  belongs_to :role
  belongs_to :project
end
