class Movie < ApplicationRecord
    belongs_to :category # belong to one category
    has_one_attached :image
end
