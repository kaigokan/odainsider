class Theme < ApplicationRecord
  validates :title, presence: true,
                    uniqueness: true,
                    length: {maximum: 255}
end
