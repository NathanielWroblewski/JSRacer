class Game < ActiveRecord::Base
  has_and_belongs_to_many :players
  validates :url, :uniqueness => true
end
