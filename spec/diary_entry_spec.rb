require "diary_entry"

RSpec.describe "Unit tests" do
    it "No diary entries provided" do
        diary = Diary.new
        expect{DiaryEntry.new("", "")}.to raise_error "No diary entry"
    end
end