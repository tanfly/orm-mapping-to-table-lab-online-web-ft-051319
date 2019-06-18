class Student

attr_accessor :name, :grade
attr_reader :id

  def initialize (name, grade, id = nil)
    @name = name 
    @grade = grade 
    @id = id
  end 

  def self.create_table
    1.  sql =  <<-SQL 
2.       CREATE TABLE IF NOT EXISTS students (
3.         id INTEGER PRIMARY KEY, 
4.         name TEXT, 
5.         grade TEXT
6.         )
7.         SQL
8.     DB[:conn].execute(sql) 
  end
  
end
