class Stream < ApplicationRecord
  has_many :stream_videos, dependent: :destroy
  has_many :videos, through: :stream_videos
  has_many :played_videos, through: :plays, source: :video

  validates :title, :performer, :year_released, :record_label, presence: true
end

