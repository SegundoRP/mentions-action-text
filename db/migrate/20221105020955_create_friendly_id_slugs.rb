class CreateFriendlyIdSlugs < ActiveRecord::Migration[6.1]
  def change
    create_table :friendly_id_slugs do |t|
      t.string :slug
      t.references :sluggable, polymorphic: true, null: false
      t.string :scope

      t.timestamps
    end
  end
end
