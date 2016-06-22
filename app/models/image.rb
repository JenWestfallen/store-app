class Image < ActiveRecord::Base

validates :image, presence: true
validates :product_id, presence: true

  belongs_to :product
  
end
