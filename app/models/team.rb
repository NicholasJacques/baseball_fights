class Team < ActiveRecord::Base
  validates :name, :abbreviation, presence: true, uniqueness: true
  validates :city, presence: true
end