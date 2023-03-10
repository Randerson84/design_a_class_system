class Diary
    def initialize
        @diary = []
        @task_list = []
    end
    def add_entry(entry)
        @diary << entry
    end
    def add_task(task)
        @task_list << task
    end
    def read_diary
        return @diary
    end
    def read_incomplete_tasks
        incomplete_tasks = @task_list.select do |complete| 
            !complete.done?
        end
        return incomplete_tasks
    end
    def time_based_read(wpm, minutes)
        readable_entires = @diary.filter do |entry|
            (entry.count_words / wpm.to_f).ceil <= minutes
        end
        readable_entires.max_by do |entry|
            entry.count_words
        end
    end
    def mobiles
        @diary.flat_map do |entry|
            entry.contents.scan(/07[0-9]{9}/)
        end.uniq
    end
end