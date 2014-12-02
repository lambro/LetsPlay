class CreateConsoles < ActiveRecord::Migration
  def change
    create_table :consoles do |t|
      t.string :name
      t.text :console_image
      t.text :console_logo

      t.timestamps
    end
  end
end
