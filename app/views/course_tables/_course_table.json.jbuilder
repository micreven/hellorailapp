json.extract! course_table, :id, :coursename, :teachername, :coursenum, :courseroom, :avaliablenums, :created_at, :updated_at
json.url course_table_url(course_table, format: :json)
