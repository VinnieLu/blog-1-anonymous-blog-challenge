class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |k|
      k.string :category, { null: false }

      k.timestamps
    end
  end
end
