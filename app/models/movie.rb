class Movie < ApplicationRecord
    belongs_to :category # belong to one category
    has_many :reviews, dependent: :destroy
    has_one_attached :image

    paginates_per 6
end
