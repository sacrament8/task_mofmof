class Nearest < ApplicationRecord
  belongs_to :article, optional: true
  validates :line_name, presence: true
  validates :station_name, presence: true
  validates :walk_time, presence: true
end