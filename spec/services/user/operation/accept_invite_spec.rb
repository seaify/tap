require "rails_helper"

RSpec.describe User::AcceptInvite do

  describe "#call" do

    let!(:user) { user = User::Invite.(email: 'new_user1@example.com', name: 'seaify')['model'] }
    let(:token) do
      user.deliver_invitation
      user.raw_invitation_token
    end
    let(:action) { ->{ User::AcceptInvite.(invitation_token: token, password: password) } }

    context 'accept invite' do
      let(:password) { '12345678' }
      it 'accept success' do
        expect{ action.call }.to change{ user.reload.invitation_accepted_at}
      end
    end

  end
end
