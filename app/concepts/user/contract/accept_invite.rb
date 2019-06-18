module User::Contract
  class AcceptInvite < Dry::Validation::Contract
    params do
      required(:invitation_token).value(:string)
      required(:password).value(:string)
    end
  end
end
