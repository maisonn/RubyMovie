class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.decimal :rating
      t.references :category

      t.timestamps
    end
  end
end
