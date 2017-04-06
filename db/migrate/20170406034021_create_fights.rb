class CreateFights < ActiveRecord::Migration[5.0]
  def change
    create_table :fights do |t|
      t.string :embed_url
      t.date :date_occurred
      t.text :description
    end
  end
end
