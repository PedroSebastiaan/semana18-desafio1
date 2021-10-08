class AddTypeRefToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :type, foreign_key: true
  end
end
