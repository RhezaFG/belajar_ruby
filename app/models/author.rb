class Author < ApplicationRecord
    has_many :books, dependent: :destroy
    has_one_attached :avatar
    paginates_per 5 

    def avatar_url
        @avatar_url = (self.avatar.present? ? Rails.application.routes.url_helpers.url_for(self.avatar) : nil)
        return  @avatar_url
    end

    # attr_accessor :avatar
    def self.ransackable_associations(auth_object = nil)
        ["books"]
    end
    def self.ransackable_attributes(auth_object = nil)
        ["name", "gender", "phone_number"]
    end


end
