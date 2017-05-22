class Device < ApplicationRecord
  validates :mac, presence: true, uniqueness: true
  belongs_to :apartaments
end
