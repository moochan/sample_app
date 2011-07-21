class CreateCustmers < ActiveRecord::Migration
  def self.up
    create_table :custmers do |t|
      t.string :bookname
      t.integer :price
      t.integer :custmer_id

      t.timestamps
    end
  end

  def self.down
    drop_table :custmers
  end
end
