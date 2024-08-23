# 3.3.4 :004 > Simpler.application.db.create_table(:tests) do
#   3.3.4 :005 >   primary_key :id
#   3.3.4 :006 >   String :title, null: false
#   3.3.4 :007 >   Integer :level, default: 0
#   3.3.4 :008 > end
class Test <Sequel::Model

end