class Address < ApplicationRecord
  belongs_to :user
  validates :street, :number, :postcode, :state, presence: true
  validates :street, length: {in: 2..50}
  validates :number, numericality: {greater_than: 0}
end
