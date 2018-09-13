class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title
      t.integer :rating
      t.string :review
      t.integer :developer_id
      t.integer :employer_id
      t.integer :project_id
      t.timestamps

    end
  end
end
