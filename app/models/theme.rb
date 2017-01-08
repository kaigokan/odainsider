class Theme < ApplicationRecord
  validates :title, presence: true,
                    uniqueness: true,
                    length: {maximum: 255}

  def self.sample
    find(Theme.pluck(:id).sample)
  end
end
