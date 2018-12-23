class AddImageToPostds < ActiveRecord::Migration[5.1]
  def change
    add_column :postds, :image, :string
  end
end
