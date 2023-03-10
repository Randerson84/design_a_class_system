Describe the Problem

As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

Design the Class System

Diary
- init
- add_entry(diary_entry)
- add_task(task)
- read()
- time_based_read(wpm, minutes)
- mobiles

DiaryEntry
- init(title, contents)
- title
- contents
- count_words

Todo
- init(task)
- task
- mark_done!
- done?

***ruby
class Diary
def initialize
    # Empty array's for diary and todo_list
end
def add_entry(diary_entry)# diary_entry is an instance of DiaryEntry
    # adds a diary entry to the diary
    # returns nothing
end
def add_task(task)# task is an instance of Todo
    # adds a task to the diary
    # returns nothing
end
def read_diary()
    # no input
    # returns all diary entries
end
def time_based_read(wpm, minutes)
    # takes words per minute and minutes to return the closest diary entry
end
def read_incomplete_tasks
    # returns all incomplete tasks
end
def mobiles
    # returns a list of mobile numbers in diary
end

class DiaryEntry
def initialize(title, contents)
    # takes two arguments and sets up instance variable
end
def title
    # returns DiaryEntry title
end
def contents
    # returns DiaryEntry contents
end
def count_words
    # counts the number of words in contents + 1
end

class Todo
def initialize(task)
    # Takes task and sets up an instance variable
end
def task
    # returns the task
end
def mark_done!
    # marks the task as complete
end
def done?
    # returns true if the task has been set to complete otherwise false.
end

Create Examples as Integration Tests
# Do the below for 1 diary entry/task and >1.
# Reads all diary entries.
diary = Diary.new
diary_entry_1 = DiaryEntry.new("my_title", "my_contents")
diary.add_entry(diary_entry_1)
diary.read_diary => [diary_entry_1]

# Reads all Todo tasks yet to be completed.
diary = Diary.new
todo_entry_1 = Todo.new("my_task")
diary.add_task(todo_entry_1)
diary.read_incomplete_tasks => [todo_entry_1]

# Shows the best diary entry for the time available.
diary = Diary.new
diary_entry_1 = DiaryEntry.new("my_title", "my_contents")
diary.add_entry(diary_entry_1)
diary.time_based_read => [diary_entry_1]

# Shows list of mobile numbers in diary entries.
diary = Diary.new
diary_entry_1 = DiaryEntry.new("my_title", "my_contents")
diary.add_entry(diary_entry_1)
diary.mobiles => ["mobile_number"]

Create Examples as Unit Tests

# Empty DiaryEntry.
diary = Diary.new
expect{DiaryEntry.new("", "")}.to raise_error "No diary entries"

# Empty Todo.
diary = Diary.new
expect{Todo.new("")}.to raise_error "No tasks provided"

# Check title outputs correctly.

# Check contents outputs.

# Check count words outputs correct count.

# Check mark done changes the task to complete.

# Check done? returns the correct boolean.
