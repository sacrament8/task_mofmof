class Article < ApplicationRecord
  validates :name, presence: true
  validates :rent,  presence: true
  validates :address, presence: true
  validates :age, presence: true
  validates :remark,  presence: true
  has_many :nearests, dependent: :destroy
  accepts_nested_attributes_for :nearests
end