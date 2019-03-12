class Article < ApplicationRecord
  has_one :first_nearest
  has_one :second_nearest
end