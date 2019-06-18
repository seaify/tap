class User::AcceptInvite < Trailblazer::Operation
  step :accept_invite

  def accept_invite(options, params)
    User.accept_invitation!(params.merge(invitation_token: params[:invitation_token]))
  end
end
