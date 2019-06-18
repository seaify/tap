class Users::InvitationsController < Devise::InvitationsController

  before_action :configure_permitted_parameters, if: :devise_controller?
  after_invitation_accepted :create_associations

  def create_associations
    info = resource.invite_info
    UserProject.create!(user_id: resource.id, role_id: info['role_id'], project_id: info['project_id'], location_id: info['location_id'])
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:accept_invitation, keys: [:email, :name, :role_id, :location_id, :project_id])
  end
end
