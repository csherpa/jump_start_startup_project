class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :rating
      t.string :review

      t.references :developer, foreign_key: true
      t.references :employer, foreign_key: true
      t.timestamps
    end
  end
end
