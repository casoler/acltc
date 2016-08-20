class Dog < ApplicationRecord
  validates :breed, presence: true
  validates :dog_group, presence: true
end
