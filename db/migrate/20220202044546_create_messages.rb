class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :username
      t.string :message
      t.belongs_to :channel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
