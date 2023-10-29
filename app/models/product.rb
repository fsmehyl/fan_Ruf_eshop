class Product < ApplicationRecord

    has_many :reviews

    validates :title, :description, :price, presence: true
    validates :price, numericality: true

    has_one_attached :image
    

    has_rich_text :description
end
