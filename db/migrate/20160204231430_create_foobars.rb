class CreateFoobars < ActiveRecord::Migration
  def change
    create_table :foobars do |t|

      t.timestamps null: false
    end
  end
end
