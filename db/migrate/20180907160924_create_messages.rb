class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :subject
      t.string :body
      t.datetime :date
      t.references :developer, foreign_key: true
      t.references :employer, foreign_key: true

      t.timestamps
    end
  end
end
