class AddInviteProjectInfoToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :invite_info, :jsonb
  end
end
