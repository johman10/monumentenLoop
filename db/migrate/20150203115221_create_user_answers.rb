class CreateUserAnswers < ActiveRecord::Migration
  def change
    create_table :user_answers do |t|
      t.text :answer
      t.integer :question_answer_id
      t.integer :user_id

      t.timestamps
    end
  end
end
