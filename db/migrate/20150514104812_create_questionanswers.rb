class CreateQuestionaswers < ActiveRecord::Migration
  def change
    create_table :questionanswers do |t|
      t.text :question
      t.text :answer

      t.timestamps null: false
    end
  end
end
