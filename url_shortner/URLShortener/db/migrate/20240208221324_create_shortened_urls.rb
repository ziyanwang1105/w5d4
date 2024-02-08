class CreateShortenedUrls < ActiveRecord::Migration[7.1]
  def change
    create_table :shortened_urls do |t|
      t.string :long_url, null: false
      t.string :short_url, null: false, index: {unique:true}
      t.references :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end
