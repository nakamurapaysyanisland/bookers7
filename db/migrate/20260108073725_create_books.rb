class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title 
      t.string :body #通常最大255文字

      t.timestamps
    end
  end
end
