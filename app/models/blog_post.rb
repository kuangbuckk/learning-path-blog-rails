class BlogPost < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true

    # Scopes: for reusable queries
    scope :sorted, -> { order(published_at: :desc, updated_at: :desc) }
    scope :draft, -> {where(published_at: nil)} #BlogPosts.draft
    scope :published, -> {where("published_at <= ? ", Time.current)} #less or equal
    scope :scheduled, -> {where("published_at > ? ", Time.current)} #less or equal
    #lambda makes new query everytime, not storing all time

    # Helper methods
    def draft?
        published_at.nil?
    end

    def published?
        published_at? && published_at <= Time.current
    end

    def scheduled?
        published_at? && published_at > Time.current
    end
end

# `published_at` datetime field
# - nil
# - 1.year.ago
# - 1.year.from_now