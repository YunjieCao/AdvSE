class AddReview < ActiveRecord::Migration
  def change
    create_table "reviews", primary_key: "order_id", force: :cascade do |t|
      t.integer "ratings",  limit: 4
      t.string  "comments", limit: 200
    end
    add_foreign_key "reviews", "requests", column: "order_id", name: "fk_reviews_1"
  end
end
