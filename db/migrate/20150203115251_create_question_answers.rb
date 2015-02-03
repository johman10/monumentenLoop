class CreateQuestionAnswers < ActiveRecord::Migration
  def change
    create_table :question_answers do |t|
      t.text :answer
      t.integer :question_id

      t.timestamps
    end
  end
end
