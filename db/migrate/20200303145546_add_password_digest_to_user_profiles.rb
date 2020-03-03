class AddPasswordDigestToUserProfiles < ActiveRecord::Migration
  def change
    add_column :user_profiles, :password_digest, :string
  end
end
