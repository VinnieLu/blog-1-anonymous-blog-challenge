class CreateEntriesTags < ActiveRecord::Migration[5.0]
  def change
    create_table :entries_tags do |w|
      w.integer :entry_id, { null: false }
      w.integer :tag_id, { null: false }

      w.timestamps
    end
  end
end
