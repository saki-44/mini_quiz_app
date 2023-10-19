class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.references :choice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
