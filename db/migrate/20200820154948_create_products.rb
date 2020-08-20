class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :arabic_name
      t.string :english_name

      t.timestamps
    end
  end
end
