class Order < ApplicationRecord
  belongs_to :user, validate: true, touch: true
  belongs_to :billing_address, class_name: "Address", validate: true
  belongs_to :shipping_address, class_name: "Address", validate: true

  has_many :items, class_name: "OrderItem", autosave: true, dependent: :destroy

  enum status: { created: "created", hold: "hold", paid: "paid" }, _default: "created"

  validates :number, presence: true
  validates :reference_date, presence: true
  validates :status, presence: true
  validates :item_total, presence: true
  validates :shipment_total, presence: true
  validates :payment_total, presence: true
  validates :discount_total, presence: true
  validates :total, presence: true
end
