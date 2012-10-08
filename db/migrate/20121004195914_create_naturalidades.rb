class CreateNaturalidades < ActiveRecord::Migration
  def change
    create_table :naturalidades do |t|
      t.references :estado
      t.string  :nome

      t.timestamps
    end
  end
end
