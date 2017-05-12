class UpdateDevices < ActiveRecord::Migration[5.1]
  def change
    change_column :devices, :mac, :string, null: false
  end
end
