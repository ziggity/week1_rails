class Review < ApplicationRecord
  belongs_to :product
  validates_presence_of :author, :content, :rating
  validates_length_of :content, :minimum => 25, :maximum => 350
  validates_numericality_of :rating,
                            :only_integer => true,
                            :greater_than => 0,
                            :less_than_or_equal_to => 10


end
