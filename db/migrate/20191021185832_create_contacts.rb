class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :value
      t.string :kind
      t.integer :user_id

      t.timestamps
    end
  end
end
