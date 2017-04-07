class Fight < ActiveRecord::Base
  validates :embed_url, :date_occurred, presence: true
end