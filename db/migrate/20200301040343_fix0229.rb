class Fix0229 < ActiveRecord::Migration
  def up
    change_column "addresses", "user_id", :integer, limit: 4
    change_column "user_verifications", "end_date", :date
    rename_column "requests", "create_time_stampmp", "create_timestamp"
  end
end
