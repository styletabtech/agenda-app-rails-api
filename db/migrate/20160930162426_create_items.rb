class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :name
      t.date :due_date
      t.string :type
      t.references :list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
