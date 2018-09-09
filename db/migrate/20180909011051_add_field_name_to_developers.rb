class AddFieldNameToDevelopers < ActiveRecord::Migration[5.2]
  def change
    add_column :developers, :first_name, :string
    add_column :developers, :last_name, :string
    add_column :developers, :phone_number, :integer
    add_column :developers, :image, :string
    add_column :developers, :description, :string
    add_column :developers, :city, :string
    add_column :developers, :state, :string
    add_column :developers, :string, :string
    add_column :developers, :zip, :integer
    add_column :developers, :resume_url, :string
    add_column :developers, :linkedin_url, :string
    add_column :developers, :github_url, :string
    add_column :developers, :portfolio_url, :string
  end
end
