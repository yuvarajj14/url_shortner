class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.text :original_url, null: false
      t.string :shorted_url, null: false

      t.timestamps
    end
  end
end
