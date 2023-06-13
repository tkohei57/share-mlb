class DroptestCamels < ActiveRecord::Migration[6.0]
  def change
    if table_exists?(:test_camels)
      drop_table :test_camels do |t|
        t.references :article, null: false, foreign_key: true
        t.references :tag, null: false, foreign_key: true
      end
    end
  end
end
