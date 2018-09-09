class AddFieldNameToEmployers < ActiveRecord::Migration[5.2]
  def change
    add_column :employers, :first_name, :string
    add_column :employers, :last_name, :string
    add_column :employers, :company_name, :string
    add_column :employers, :company_url, :string
    add_column :employers, :phone_number, :integer
    add_column :employers, :image, :string
    add_column :employers, :description, :string
    add_column :employers, :city, :string
    add_column :employers, :state, :string
    add_column :employers, :string, :string
    add_column :employers, :zip, :integer
  end
end
