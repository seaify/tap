class Users::InvitationsController < ApplicationController

  def accept
    User::AcceptInvite.(accept_params)
    redirect_to root_path, flash: { success: 'User invited!' }
  end

  private

  def accept_params
    params.permit(:invitation_token, :password)
  end

end
