module User::Contract
  class AcceptInvite < Reform::Form
    property :name
    property :password

    validates :password,  length: 8..33
    validates :name, presence: true
  end
end
