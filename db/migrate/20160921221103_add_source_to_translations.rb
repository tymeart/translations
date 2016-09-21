class AddSourceToTranslations < ActiveRecord::Migration
  def change
    add_column :translations, :source, :text
  end
end
