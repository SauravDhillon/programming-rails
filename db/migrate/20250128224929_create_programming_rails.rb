class CreateProgrammingRails < ActiveRecord::Migration[7.1]
  def change
    create_table :programming_rails do |t|
      t.string :title
      t.text :description
      t.string :link

      t.timestamps
    end
  end
end
