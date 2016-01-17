class CreateResearches < ActiveRecord::Migration
  def change
    create_table :researches do |t|
      t.string :author
      t.string :title
      t.string :category
      t.string :description
      t.text :body

      t.timestamps null: false
    end
  end
end
