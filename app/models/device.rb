class Device < ApplicationRecord
  validates :mac, presence: true, uniqueness: true
end
