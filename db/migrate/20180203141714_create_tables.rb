class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :figures do |t|
      t.string :name
    end

    create_table :titles do |t|
      t.string :name
    end

    create_table :landmarks do |t|
      t.string :name
      t.belongs_to :figure, index: true
    end

    create_table :figures_titles, id: false do |t|
      t.belongs_to :titles, index: true
      t.belongs_to :figures, index: true
    end
  end
end
