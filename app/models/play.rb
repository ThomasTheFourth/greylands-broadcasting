class Play < ApplicationRecord
  belongs_to :stream
  belongs_to :video

  validates :played_at, presence: true
end

