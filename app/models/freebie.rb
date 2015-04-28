class Freebie < ActiveRecord::Base
  has_many :comments
  validates :item, presence: true,
                    length: { minimum: 5 }
end
