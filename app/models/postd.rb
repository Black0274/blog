class Postd < ApplicationRecord
  validates :title, :summary, :body, presence: true
end
