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

FactoryBot.define do
  factory :notification_template do
    name { "MyString" }
    context { "MyText" }
  end
end
