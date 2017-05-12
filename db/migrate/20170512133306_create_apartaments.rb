class CreateApartaments < ActiveRecord::Migration[5.1]
  def change
    create_table :apartaments do |t|
      t.string :number
      t.float :balance
      t.timestamp :checkin
      t.timestamp :checkout

      t.timestamps
    end
  end
end
