class Todo
    def initialize(task)
        fail "No tasks provided" if task == ""
        @task = task
        @complete = false
    end
    def task
        @task
    end
    def mark_done!
        @complete = true
    end
    def done?
        if @complete == true
            return true
          else 
            return false
          end
    end
end