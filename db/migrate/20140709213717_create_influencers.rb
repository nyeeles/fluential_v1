class CreateInfluencers < ActiveRecord::Migration
  def change
    create_table :influencers do |t|
      t.text :username

      t.timestamps
    end
  end
end
