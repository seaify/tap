class User::AcceptInvite < Trailblazer::Operation
  step :validate
  step :accept_invite
  step :create_user_project

  def validate(options, params)
    contract = User::Contract::AcceptInvite.new
    contract.call(params)
  end

  def accept_invite(options, params)
    options[:model] = User.accept_invitation!(params.merge(invitation_token: params[:invitation_token]))
  end

  def create_user_project(options, params)
    info = options[:model].invite_info
    UserProject.create!(project_id: info['project_id'], role_id: info['role_id'], user: options[:model])
  end
end
