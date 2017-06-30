class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :name
      t.numeric :rating
      t.text :content

      t.timestamps
    end
  end
end
