class CreateTasks < ActiveRecord::Migration[7.0]
  disable_ddl_transaction!

  def up
    create_table :tasks do |t|
      t.string :name, null: false
      t.text :description
      t.string :state, null: false, default: "Unstarted"
      t.string :story_type, null: false, default: "feature"
      t.string :priority, null: false, default: "P3-Low"
      t.string :point, null: false, default: "Unestimated"
      t.references :project, null: false, foreign_key: true
      t.references :owner, null: true
      t.references :requester, null: false

      t.timestamps
    end
    add_foreign_key :tasks, :users, column: :owner_id, null: true, validate: false
    add_foreign_key :tasks, :users, column: :requester_id, null: false, validate: false
  end

  def down
    remove_foreign_key(:tasks, column: :owner_id)
    remove_foreign_key(:tasks, column: :requester_id)
    drop_table :tasks
  end
end
