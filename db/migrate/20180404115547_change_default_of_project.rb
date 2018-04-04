class ChangeDefaultOfProject < ActiveRecord::Migration[5.1]
  def change
    change_column_default :projects, :status, "aberto"
  end
end
