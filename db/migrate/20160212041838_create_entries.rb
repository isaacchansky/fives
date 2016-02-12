class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.belongs_to :account, foreign_key: true
      t.text :content
      t.string :title
      t.text :thing_one
      t.text :thing_two
      t.text :thing_three
      t.text :thing_four
      t.text :thing_five

      t.timestamps
    end
  end
end
