class User::AcceptInvite < Trailblazer::Operation
  step    Contract::Build( constant: User::Contract::AcceptInvite )
  step    Contract::Validate()
  step :accept_invite
  step :create_user_project

  def accept_invite(options, params)
    options[:model] = User.accept_invitation!(params.merge(invitation_token: params[:invitation_token]))
  end

  def create_user_project(options, params)
    info = options[:model].invite_info
    UserProject.create!(project_id: info['project_id'], role_id: info['role_id'], user: options[:model])
  end
end
