class Link < ApplicationRecord
  validates :original_url, :shorted_url, presence: true
  validates :shorted_url, uniqueness: true
end
