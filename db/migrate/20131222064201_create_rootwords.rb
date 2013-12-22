class CreateRootwords < ActiveRecord::Migration
  def change
    create_table :rootwords do |t|
      t.string 'word'
      t.string 'meaning'
      t.string 'usages'
      t.timestamps
    end
  end
end
