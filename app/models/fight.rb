class Fight < ActiveRecord::Base
  validates :embed_url, :date_occurred, presence: true
  validate :home_team_cannot_be_away_team

  belongs_to :away_team, class_name: 'Team', foreign_key: :away_team_id
  belongs_to :home_team, class_name: 'Team', foreign_key: :home_team_id

  private

  def home_team_cannot_be_away_team
    @errors.add(:base, "The home team cannot be the same as the away team") if self.home_team == self.away_team
  end
end