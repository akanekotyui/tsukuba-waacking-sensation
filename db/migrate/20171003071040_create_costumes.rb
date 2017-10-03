class CreateCostumes < ActiveRecord::Migration[5.1]
  def change
    create_table :costumes do |t|
      t.string :name
      t.string :item
      t.string :url
      t.string :comment

      t.timestamps
    end
  end
end
