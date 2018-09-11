class CreateAplications < ActiveRecord::Migration[5.2]
  def change
    create_table :aplications do |t|
      t.integer :project_id
      t.integer :developer_id

      t.timestamps
    end
  end
end
