class CreatePosthtgs < ActiveRecord::Migration[5.2]
  def change
    create_table :posthtgs do |t|
      t.belongs_to :post
      t.belongs_to :htg

      t.timestamps
    end
  end
end
