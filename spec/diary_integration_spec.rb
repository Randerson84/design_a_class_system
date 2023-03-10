require "diary"
require "diary_entry"
require "todo"

RSpec.describe "Integration Tests" do
    context "Passed one diary entry/task" do
        it "Can read the diary entries " do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my_title", "my_contents")
            diary.add_entry(diary_entry_1)
            expect(diary.read_diary).to eq [diary_entry_1]
        end
        it "Can read the todo list" do
            diary = Diary.new
            todo_entry_1 = Todo.new("my_task")
            diary.add_task(todo_entry_1)
            expect(diary.read_incomplete_tasks).to eq [todo_entry_1]
        end
        it "Read the diary entry best suited based on reading time " do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my_title", "my_contents")
            diary.add_entry(diary_entry_1)
            expect(diary.time_based_read(2, 1)).to eq diary_entry_1
        end
        it "Outputs a list of mobile numbers from the diary entries" do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my_title", "new friend's number 07800000000")
            diary.add_entry(diary_entry_1)
            expect(diary.mobiles).to eq ["07800000000"]
        end
    end
end