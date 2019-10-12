class CreateCoordinates < ActiveRecord::Migration[5.2]
  def change
    create_table :coordinates do |t|
      t.string :image, null: false
      t.text :item_detail
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
