class Book < ApplicationRecord
  belongs_to :library

  validates :name, presence: true
end
