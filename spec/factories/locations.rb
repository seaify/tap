# == Schema Information
#
# Table name: locations
#
#  id                :bigint           not null, primary key
#  locationable_type :string
#  locationable_id   :bigint
#  latitude          :float
#  longitude         :float
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

FactoryBot.define do
  factory :location do
    
  end
end
