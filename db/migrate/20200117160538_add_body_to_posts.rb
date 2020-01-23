class AddBodyToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :body, :string
  end
end
