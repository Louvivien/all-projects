# This migration comes from the_gossip_project (originally 20181115045340)
class CreateTheGossipProjectGossips < ActiveRecord::Migration[5.1]
  def change
    create_table :the_gossip_project_gossips do |t|
      t.string :anonymous_author
      t.string :content

      t.timestamps
    end
  end
end
