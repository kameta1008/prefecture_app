class CreatePrefectures < ActiveRecord::Migration[7.0]
  def change
    create_table :prefectures do |t|
      t.string :name
      t.string :region
      t.string :image

      t.timestamps
    end
  end
end
