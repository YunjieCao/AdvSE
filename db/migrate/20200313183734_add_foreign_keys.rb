class AddForeignKeys < ActiveRecord::Migration
  def change
    add_index "addresses", ["user_id"], name: "user_id_idx", using: :btree

    add_index "requests", ["carrier_id"], name: "FK_carrier_id_idx", using: :btree
    add_index "requests", ["dest_addr_id"], name: "FK_dest_addr_id_idx", using: :btree
    add_index "requests", ["requester_id"], name: "FK_requester_id_idx", using: :btree
    add_index "requests", ["source_addr_id"], name: "FK_source_addr_id_idx", using: :btree

    add_index "task_applications", ["user_id"], name: "FK_user_id_idx", using: :btree
  
    add_index "user_verifications", ["user_id"], name: "FK_verif_user_id_idx", using: :btree

    add_foreign_key "addresses", "user_profiles", column: "user_id", name: "FK_add_user_id"
    add_foreign_key "requests", "addresses", column: "dest_addr_id", name: "FK_req_dest_addr_id"
    add_foreign_key "requests", "addresses", column: "source_addr_id", name: "FK_req_source_addr_id"
    add_foreign_key "requests", "user_profiles", column: "carrier_id", name: "FK_req_carrier_id"
    add_foreign_key "requests", "user_profiles", column: "requester_id", name: "FK_req_requester_id"
    add_foreign_key "task_applications", "requests", column: "order_id", name: "FK_app_order_id"
    add_foreign_key "task_applications", "user_profiles", column: "user_id", name: "FK_app_user_id"
    add_foreign_key "user_verifications", "user_profiles", column: "user_id", name: "FK_verif_user_id"  
  
  end
end
