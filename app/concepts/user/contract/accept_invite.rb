module User::Contract
  class AcceptInvite < Dry::Validation::Contract
    params do
      required(:invitation_token).filled(:string)
      required(:password).filled(:string)
    end

    rule(:password) do
      key.failure('must be greater than 8') if value.length < 8
    end

  end
end
