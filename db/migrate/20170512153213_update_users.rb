class UpdateUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :name, :string, null: false
    change_column :users, :cpf, :string, null: false, unique: true
    change_column :users, :phone, :string, null: false
  end
end
