class CreateInfluencers < ActiveRecord::Migration
  def change
    create_table :influencers do |t|
      t.string :user
      t.text :url

      t.timestamps
    end
  end
end
