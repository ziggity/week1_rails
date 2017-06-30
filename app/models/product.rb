class Product < ApplicationRecord
  has_many :reviews
  validates_presence_of :name, :cost, :country
  validates_numericality_of :cost

  scope :most_reviews, -> {(
    select("products.id, products.name, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group('products.id')
    .order('reviews_count DESC')
    .limit(2)
  )}

  scope :made_in_mexico, -> { where(:country => "MEXICO")}
  scope :made_in_usa, -> { where(:country => "USA")}
  scope :two_most_recent_products, -> { order(created_at: :desc).limit(2)}
end
