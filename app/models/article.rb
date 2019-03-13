class Article < ApplicationRecord
  has_many :nearests, dependent: :destroy
  accepts_nested_attributes_for :nearests
end