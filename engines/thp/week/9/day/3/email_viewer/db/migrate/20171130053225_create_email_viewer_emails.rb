class CreateEmailViewerEmails < ActiveRecord::Migration[5.1]
  def change
    create_table :email_viewer_emails do |t|
      t.string :object
      t.text :body

      t.timestamps
    end
  end
end
