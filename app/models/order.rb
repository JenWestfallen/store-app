class Order < ActiveRecord::Base
 
validates :user_id, presence: true


belongs_to :user
has_many :carted_products
has_many :products, through: :carted_products


def calculate_subtotal(cart_items)
  self.subtotal = 0

  cart_items.each do |cart_item|
    self.subtotal += cart_item.product.price * cart_item.quantity
  end
end

def calculate_tax
  self.tax = subtotal * 0.09
end

def calculate_total
  self.total = subtotal + tax
end

def calculate_figures(product_price)
    calculate_subtotal(product_price)
    calculate_tax
    calculate_total
end


end
