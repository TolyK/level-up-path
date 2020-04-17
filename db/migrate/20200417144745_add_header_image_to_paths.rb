class AddHeaderImageToPaths < ActiveRecord::Migration[5.2]
  def change
    add_column :paths, :header_image, :string
  end
end
