class CreateDevelopers < ActiveRecord::Migration[5.2]
  def change
    create_table :developers do |t|
      t.string :resume_url
      t.string :linkedin_url
      t.string :github_url
      t.string :portfolio_url

      t.timestamps
    end
  end
end
