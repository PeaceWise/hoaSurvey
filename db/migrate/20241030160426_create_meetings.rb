class CreateMeetings < ActiveRecord::Migration[7.2]
  def change
    create_table :meetings do |t|
      t.date :date
      t.string :topic
      t.text :description

      t.timestamps
    end
  end
end
