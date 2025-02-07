class Video < ApplicationRecord
  has_many :plays, dependent: :destroy
  has_many :streams_played_on, through: :plays, source: :stream
end

