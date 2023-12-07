class Product < ApplicationRecord

    has_many :reviews

    
  before_destroy :delete_reviews

  private

  def delete_reviews
    reviews.destroy_all
  end

    validates :title, :description, :price, presence: true
    validates :price, numericality: true

    has_one_attached :image
    

    has_rich_text :description
end
