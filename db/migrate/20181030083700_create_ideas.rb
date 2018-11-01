class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.string :title
      t.integer :average_rating

      t.timestamps
    end
  end
end
