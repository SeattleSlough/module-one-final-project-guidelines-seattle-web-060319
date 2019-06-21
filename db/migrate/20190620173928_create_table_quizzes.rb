class CreateTableQuizzes < ActiveRecord::Migration[5.0]
  def change
    create_table :quizzes do |t|
      t.integer :score
      t.integer :user_id
    end
  end
end
