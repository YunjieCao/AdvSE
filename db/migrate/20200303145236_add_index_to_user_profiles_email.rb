class AddIndexToUserProfilesEmail < ActiveRecord::Migration
  def change
    add_index :user_profiles, :email, unique: true
  end
end
