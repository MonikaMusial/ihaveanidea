class CreateUserIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :user_ideas do |t|
    	t.integer :user_id
    	t.integer :idea_id
    	t.integer :rating
    end
  end
end
