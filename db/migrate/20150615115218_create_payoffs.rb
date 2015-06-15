class CreatePayoffs < ActiveRecord::Migration
  def change
    create_table :payoffs do |t|
      t.string :name
      t.string :url
      t.string :payoff
      t.belongs_to :project, index: true

      t.timestamps
    end
  end
end
