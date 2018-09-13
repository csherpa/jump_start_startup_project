class AddDeletedAtColumnToEmployers < ActiveRecord::Migration[5.2]
  def change
    add_column :employers, :deleted_at, :datetime
  end
end
