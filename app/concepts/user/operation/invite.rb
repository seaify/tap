class User::Invite < Trailblazer::Operation
  step :invite!

  def invite!(options, params:)
    options['model'] = User.invite!(params)
  end
end
