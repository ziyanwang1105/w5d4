class ShortenedUrl < ApplicationRecord
    validate :user, :short_url, :long_url, presence: true
    validate :short_url, uniqueness: true

    belongs_to :user,
        primary_key: :id,
        foreign_key: :user,
        class_name: :User
end
