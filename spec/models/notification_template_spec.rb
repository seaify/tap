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

require 'rails_helper'

RSpec.describe NotificationTemplate, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
