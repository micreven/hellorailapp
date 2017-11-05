class CreateCourseTables < ActiveRecord::Migration
  def change
    create_table :course_tables do |t|
      t.string :coursename
      t.string :teachername
      t.integer :coursenum
      t.string :courseroom
      t.integer :avaliablenums

      t.timestamps null: false
    end
  end
end
