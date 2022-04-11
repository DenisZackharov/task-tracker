class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.text :description
      t.string :state, null: false, default: "Unstarted"
      t.string :story_type, null: false, default: "feature"
      t.string :priority, null: false, default: "P3-Low"
      t.string :point, null: false, default: "Unestimated"
      t.references :project, null: false, foreign_key: true
      t.references :owner, null: true, foreign_key: { to_table: :users }
      t.references :requester, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
