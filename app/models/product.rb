class Product < ApplicationRecord
 has_many :orders
 has_many :comments, dependent: :destroy
  def self.search(search_term)
    if Rails.env.development?
       @products = Product.where('name LIKE ?', "%#{search_term}%")
    elsif Rails.env.production?
       @products = Product.where('name ilike ?', "%#{search_term}%")
  end
  def highest_rating_comment
  		comments.rating_desc.first
  	end

  	def lowest_rating_comment
  		comments.rating_asc.first
  	end
end
end
