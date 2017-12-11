class AddReviewsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
    t.column :content, :string
    t.column :author, :string
    t.column :rating, :integer
    t.column :city, :string
    end
  end
end
