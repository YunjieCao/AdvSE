class AddTimestampsToUserProfiles < ActiveRecord::Migration
  def change
    add_column :user_profiles, :created_at, :datetime, null: false
    add_column :user_profiles, :updated_at, :datetime, null: false
  end
end
