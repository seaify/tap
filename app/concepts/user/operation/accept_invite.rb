class User::AcceptInvite < Trailblazer::Operation
  steps test
  step User.accept_invitation!(invitation_token: token, name: 'xx', password: '12345678')

  def test
    byebug
  end
end
