class Video < ApplicationRecord
  has_many :stream_videos, dependent: :destroy
  has_many :streams, through: :stream_videos

  validates :youtube_url, :stream_url, :backup_url, :api_key, presence: true
end

