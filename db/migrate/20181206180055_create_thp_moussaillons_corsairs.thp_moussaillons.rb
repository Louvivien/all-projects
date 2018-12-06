# This migration comes from thp_moussaillons (originally 20181115054447)
class CreateThpMoussaillonsCorsairs < ActiveRecord::Migration[5.1]
  def change
    create_table :thp_moussaillons_corsairs do |t|
      t.string :first_name
      t.integer :age
      t.string :likeness
      t.string :bio
      t.string :slack_handle
      t.string :github_handle

      t.timestamps
    end
  end
end
