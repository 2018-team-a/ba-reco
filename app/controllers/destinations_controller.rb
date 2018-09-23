class DestinationsController < ApplicationController

  create_table "destinations", force: :cascade do |t|
    t.string "postal_code"
    t.text "destination"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
