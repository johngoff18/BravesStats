class AddThumbnailUrlToPlayer < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :thumbnail_url, :string
  end
end
