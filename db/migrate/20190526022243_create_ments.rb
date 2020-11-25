class CreateMents < ActiveRecord::Migration[5.2]
  def change
    create_table :ments do |t|
      t.belongs_to :user
      t.belongs_to :post
      t.text :content

      t.timestamps
    end
  end
end
