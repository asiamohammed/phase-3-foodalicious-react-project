class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :recipes, :type, :variety
  end
end
