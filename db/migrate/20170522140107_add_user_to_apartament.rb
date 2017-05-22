class AddUserToApartament < ActiveRecord::Migration[5.1]
  def change
    add_reference :apartaments, :users, foreign_key: true
  end
end
