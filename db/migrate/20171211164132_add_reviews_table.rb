class AddReviewsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
    t.column :destination_id, :integer
    t.column :user_id, :integer
    t.column :content, :string
    t.column :title, :string
    t.column :rating, :integer
    end
  end
end
