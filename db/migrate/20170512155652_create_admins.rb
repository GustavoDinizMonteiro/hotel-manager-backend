class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.string :name, null: false
      t.string :username, null: false, unique: true
      t.string :password_digest, null: false
      t.boolean :superuser, null: false, default: false

      t.timestamps
    end
  end
end
