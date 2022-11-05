class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.bigint :recipient_id
      t.bigint :actor_id
      t.datetime :read_at
      t.references :notifiable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
