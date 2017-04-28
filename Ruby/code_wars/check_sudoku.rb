def check_numbers(array) #checks for repetition
    numb_list = [1,2,3,4,5,6,7,8,9]

    array.each do |number|
        if numb_list.include? number
            numb_list.delete(number)
        else
            next
        end
    end

    if numb_list.empty?
        return 1
    else
        return 0
    end
end

def done_or_not(board)
    row_true = 0
    column_true = 0
    grid_true = 0

    board.each do |row| #checks rows
        row_true += check_numbers(row)
    end

    count = 0

    while count < board.length #checks column
        column = []
        board.each do |row|
            column << row[count]
        end
        count += 1
        column_true += check_numbers(column)
    end

    while !board[0].empty?
        grid1 = []
        grid2 = []
        grid3 = []

        board.each_with_index do |row, index|
            case index

            when 0..2 #row1 row2 row 3
                grid1 << row[0] #pushes 1st element
                grid1 << row[1] #pushes 2nd element
                grid1 << row[2] #pushes 3rd element
                row.slice!(0..2)
            when 3..5 #row3 #row4 #row5
                grid2 << row[0] #pushes 3rd element
                grid2 << row[1]
                grid2 << row[2]
                row.slice!(0..2)
            when 6..8
                grid3 << row[0]
                grid3 << row[1]
                grid3 << row[2]
                row.slice!(0..2)
            end
        end
        grid_true += check_numbers(grid1)
        grid_true += check_numbers(grid2)
        grid_true += check_numbers(grid3)
    end

    if grid_true + column_true + row_true == 27
        return "Finished!"
    else
        return "Try again!"
    end
end
