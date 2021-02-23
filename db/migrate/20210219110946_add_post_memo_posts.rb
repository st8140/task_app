class AddPostMemoPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :post_memo, :string
  end
end
