class CreateContentProducers < ActiveRecord::Migration
  def change
    create_table :content_producers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
