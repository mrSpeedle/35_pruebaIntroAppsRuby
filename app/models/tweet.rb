class Tweet < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_full_text, against: {
    user_name: "A",
    description: "B"
  }

  scope :active, -> { where(softdelete: false) }

  def soft_delete
    update(softdelete: true)
  end
end
