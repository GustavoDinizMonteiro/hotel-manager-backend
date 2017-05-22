class AddApartamentToDevice < ActiveRecord::Migration[5.1]
  def change
    add_reference :devices, :apartaments, foreign_key: true
  end
end
