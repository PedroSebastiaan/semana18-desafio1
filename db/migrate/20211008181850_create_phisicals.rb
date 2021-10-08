class CreatePhisicals < ActiveRecord::Migration[5.2]
  def change
    create_table :phisicals do |t|

      t.timestamps
    end
  end
end
