class CreateSloths < ActiveRecord::Migration[5.2]
  def change
    create_table :sloths do |t|
      t.string :color
      t.string :paws
      t.integer :fluffiness

      t.timestamps
    end
  end
end
