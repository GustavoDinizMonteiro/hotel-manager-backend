class Apartament < ApplicationRecord
  validates :number, presence: true, uniqueness: true
  validates :balance, presence: true
  validates :checkin, presence: true
  validates :checkout, presence: true

  has_one :device, dependent: :destroy

  belongs_to :user
end
