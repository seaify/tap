require "rails_helper"

RSpec.describe User::Invite do

  describe "#call" do

    let(:action) { ->{ User::Invite.(email: 'new_user@example.com') } }

    it 'invite user' do
      expect{ action.call }.to change{ User.count }.by(1)
      created_user = User.last
      expect(created_user.invitation_accepted_at).to be nil
    end

  end
end
