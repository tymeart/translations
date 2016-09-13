class AddNoteToTranslations < ActiveRecord::Migration
  def change
    add_column :translations, :note, :string
  end
end
