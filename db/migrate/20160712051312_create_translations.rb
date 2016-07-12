class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.string :title
      t.string :translation_type
      t.text :body
      t.integer :content_producer_id

      t.timestamps null: false
    end
  end
end
