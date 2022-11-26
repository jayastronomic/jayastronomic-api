class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :content, null: false
      t.uuid :uuid, null: false, default: -> { "gen_random_uuid()" }

      t.timestamps
    end
  end
end
