class AddOrderidToProposals < ActiveRecord::Migration[5.1]
  def change
    add_column :proposals, :orderid, :integer
  end
end
