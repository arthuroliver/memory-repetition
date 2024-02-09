class CreateContents < ActiveRecord::Migration[7.0]
  def change
    create_table :contents do |t|
      t.string :name
      t.text :description
      t.text :snippet
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
