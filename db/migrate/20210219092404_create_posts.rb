class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :post_title
      t.date :start_at
      t.date :end_at
      t.string :is_all_day

      t.timestamps
    end
  end
end
