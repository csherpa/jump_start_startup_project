class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.integer :developer_id
      t.integer :employer_id
      t.string :project_status
      t.string :project_name
      t.string :project_status
      t.string :project_description
      t.string :project_review
      t.boolean :plattform_mobile
      t.boolean :plattform_desktop
      t.boolean :platform_tablet
      t.boolean :assets_text
      t.boolean :assets_images
      t.boolean :assets_videos
      t.boolean :assets_audio
      t.boolean :assets_database
      t.boolean :due_date_less_then_month
      t.boolean :due_date_one_month
      t.boolean :due_date_three_month
      t.boolean :due_date_plus_three_month
      t.boolean :pages_landing_pages
      t.boolean :pages_two_pages

      t.timestamps
    end
  end
end
