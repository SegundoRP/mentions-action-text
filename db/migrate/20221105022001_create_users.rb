class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.datetime :announcements_last_read_at
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
