class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.references :user, foreign_key: true
      t.references :quiz, foreign_key: true
      t.boolean :was_winner

      t.timestamps
    end
  end
end
