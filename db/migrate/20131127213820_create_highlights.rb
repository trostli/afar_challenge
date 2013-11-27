class CreateHighlights < ActiveRecord::Migration
  def up
    create_table :highlights do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end

  def down
  end
end
