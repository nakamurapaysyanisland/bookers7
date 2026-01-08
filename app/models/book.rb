class Book < ApplicationRecord
    belong_to :user

    has_one_attached :book_image
end
