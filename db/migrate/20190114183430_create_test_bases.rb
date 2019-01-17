class CreateTestBases < ActiveRecord::Migration[5.2]
  def change
    create_table :test_bases do |t|

      t.timestamps
    end
  end
end
