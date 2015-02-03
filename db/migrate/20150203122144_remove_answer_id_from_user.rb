class RemoveAnswerIdFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :answer_id, :integer
  end
end
