class Category < ApplicationRecord
    has_many :movies, dependent: :delete_all # can have many movies
    paginates_per 6
    def to_s
        name
    end
end
