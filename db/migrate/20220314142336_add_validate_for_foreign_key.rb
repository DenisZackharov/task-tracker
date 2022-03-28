class AddValidateForForeignKey < ActiveRecord::Migration[7.0]
  def change
    validate_foreign_key :tasks, column: :owner_id
    validate_foreign_key :tasks, column: :requester_id
  end
end
