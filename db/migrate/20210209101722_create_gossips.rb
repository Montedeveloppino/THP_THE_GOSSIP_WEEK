class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.string :title
      t.string :content
      t.string :author
      t.string :author_city

      t.belongs_to :User , index: true
      t.timestamps
    end
  end
end
