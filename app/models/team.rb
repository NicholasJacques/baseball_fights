class Team < ActiveRecord::Base
  validates :name, :abbreviation, presence: true, uniqueness: true
  validates :city, presence: true

  has_many :away_fights, class_name: 'Fight', foreign_key: :away_team_id
  has_many :home_fights, class_name: 'Fight', foreign_key: :home_team_id

  def fights
    Fight.where("away_team_id = ? OR home_team_id = ?", self.id, self.id)
  end

end