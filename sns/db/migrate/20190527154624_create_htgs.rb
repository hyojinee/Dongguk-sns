class CreateHtgs < ActiveRecord::Migration[5.2]
  def change
    create_table :htgs do |t|
      t.string :name
      t.belongs_to :post

      t.timestamps
    end
  end
end
