class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.string :title, { null: false, limit: 50 }
      t.string :body, { null: false }
      t.string :author, { null: false }
      t.date :date

      t.timestamps
    end
  end
end
