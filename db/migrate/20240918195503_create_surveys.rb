class CreateSurveys < ActiveRecord::Migration[7.2]
  def change
    create_table :surveys do |t|
      t.string :name
      t.string :address
      t.string :role
      t.string :meeting_feel
      t.text :comments

      t.timestamps
    end
  end
end
