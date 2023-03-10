require "todo"

RSpec.describe "Unit tests" do
    it "No tasks provided" do
        diary = Diary.new
        expect{Todo.new("")}.to raise_error "No tasks provided"
    end
end