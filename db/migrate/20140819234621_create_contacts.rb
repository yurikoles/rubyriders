class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email_or_phone
      t.text :question_or_feedback
      t.string :ip_address

      t.timestamps
    end
  end
end
