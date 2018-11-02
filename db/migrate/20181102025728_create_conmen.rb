class CreateConmen < ActiveRecord::Migration[5.1]
  def change
    create_table :conmen do |t|
      t.string :sido
      t.string :gusigun
      t.string :election
      t.string :names

      t.timestamps
    end
  end
end
