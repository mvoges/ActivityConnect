class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.string :description
      t.datetime :when
      t.string :author

      t.timestamps null: false
    end
  end
end
