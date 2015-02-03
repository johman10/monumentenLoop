class AddUserAnswerIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :user_answer_id, :integer
  end
end
