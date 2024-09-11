class Book < ApplicationRecord
    belongs_to :author
    has_one_attached :pic
    paginates_per 1
    def pic_url
        @pic_url = (self.pic.present? ? Rails.application.routes.url_helpers.url_for(self.pic) : nil)
        return  @pic_url
    end
end
