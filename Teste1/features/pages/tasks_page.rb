class TaskPage
############################################################################################
###Main Definitions                                                                      ###
############################################################################################

    def task_fill(text)
        task_desc_input.when_present.set text
    end

    def click_add_task_button
        add_task_button.when_present.click    
    end

    def verify_last_todo_created(todo_item)
        raise "The Last Todo Item: #{todo_item} was not found" unless first_todo_item.text == todo_item
    end

############################################################################################
### Locators                                                                             ###
############################################################################################

    def task_desc_input
        $browser.text_field(id: 'new_task')
    end

    def add_task_button
        $browser.span(class: /input-group-addon/)
    end

    def todo_list_table
        $browser.table(class: 'table')
    end

    def first_todo_item
        todo_list_table.tr(index: 1).td(index: 1)
    end

end