class ChangeDefaultOfProject < ActiveRecord::Migration[5.1]
  def change
    change_column_default :projects, :status, "open"
  end
end
