class CreateUser < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string "email"
      t.string "username"
      t.string "password_digest"
      t.integer "role", default: 0
    end
  end
end
