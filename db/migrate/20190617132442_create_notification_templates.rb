class CreateNotificationTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :notification_templates do |t|
      t.string :name
      t.references :project, null: false
      t.references :role, null: false
      t.text :context

      t.timestamps
    end
  end
end
