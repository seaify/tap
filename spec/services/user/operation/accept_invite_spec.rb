require "rails_helper"

RSpec.describe User::AcceptInvite do

  describe "#call" do
    let!(:role) { create(:role, name: 'admin') }
    let!(:project) { create(:project, name: 'project 1') }
    let!(:user) { user = User::Invite.(email: 'new_user1@example.com', name: 'seaify', invite_info: {project_id: project.id, role_id: role.id})['model'] }
    let(:token) do
      user.deliver_invitation
      user.raw_invitation_token
    end
    let(:action) { ->{ User::AcceptInvite.(invitation_token: token, password: password) } }

    context 'accept invite with normal password' do
      let(:password) { '12345678' }
      it 'accept success' do
        expect{ action.call }.to change{ user.reload.invitation_accepted_at}
                            .and change{ user.projects.count }.from(0).to(1)
      end
    end

    context 'accept invite with illegal password' do
      let(:password) { '' }
      it 'accept success' do
        expect{ action.call }.not_to change{ user.reload.invitation_accepted_at}
      end
    end

  end
end
