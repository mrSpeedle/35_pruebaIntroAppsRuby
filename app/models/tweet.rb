class Tweet < ApplicationRecord
  scope :active, -> { where(softdelete: false) }

  def soft_delete
    update(softdelete: true)
  end
end
