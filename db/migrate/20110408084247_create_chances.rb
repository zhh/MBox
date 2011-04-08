class CreateChances < ActiveRecord::Migration
  def self.up
    create_table :chances do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :chances
  end
end
