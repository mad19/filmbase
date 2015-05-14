class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.text :begin_text
      t.text :end_text
      t.belongs_to :person, index: true, foreign_key: true
      t.belongs_to :film, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
