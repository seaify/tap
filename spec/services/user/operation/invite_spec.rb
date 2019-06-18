require "rails_helper"

RSpec.describe User::Invite do

  describe "#call" do
    it 'invite user' do
      User::Invite.(email: 'new_user@example.com')
      byebug
    end
  end
end
