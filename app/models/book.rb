class Book < ApplicationRecord
    belongs_to :author
    paginates_per 1
end
