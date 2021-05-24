class Category < ApplicationRecord
    has_many :movies, dependent: :delete_all # can have many movies
    def to_s
        name
    end
end
