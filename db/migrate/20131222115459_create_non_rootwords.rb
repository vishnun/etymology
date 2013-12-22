class CreateNonRootwords < ActiveRecord::Migration
  def change
    create_table :non_rootwords do |t|
      t.references :rootword
      t.string :word
      t.string :meaning
      t.string :usages
      t.timestamps
    end
  end
end
