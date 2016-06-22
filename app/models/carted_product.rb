class CartedProduct < ActiveRecord::Base

validates :user_id, presence: true
validates :product_id, presence: true

validates :quantity, presence: true
validates :quantity, numericality: { greater_than: 0 }

  belongs_to :user
  belongs_to :order
  belongs_to :product

  def subtotal
    novelty.price * quantity
  end

  def price
    product.price
  end

  def name
    product.name
  end

end
