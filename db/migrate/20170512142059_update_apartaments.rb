class UpdateApartaments < ActiveRecord::Migration[5.1]
  def change
    change_column :apartaments, :number, :string, null: false, unique: true
    change_column :apartaments, :balance, :float, null: false, default: 0
    change_column :apartaments, :checkin, :timestamp, null: false
    change_column :apartaments, :checkout, :timestamp, null: false
  end
end
