class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :m_format
      t.string :length_hours
      t.string :length_minutes
      t.integer :release_year
      t.integer :rating, default: nil

      t.references :user

      t.timestamps
    end
  end
end
