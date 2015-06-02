class Puzzle

  def initialize(size, words)
    @size = size
    @words = words

  end

  def check_word

  end

  def place_word

  end

  def create
    a = @words
    holder = "."
    chars = a.join('')
    @grid = []
    @size.times do |row|
      @grid[row]=[]
      @size.times do
        @grid[row]<< holder
      end
    end
    #chars.each_char{|i| i}
puts chars.split("").shuffle.join




    # col = 0
    # @grid.each do |row|
    #   row[col] = 1
    #   col+=1
    # end
    #
    # @grid.each do |row|
    #   row[3] = 0
    # end
    #
    # col=0
    # while col < @grid[4].length
    #   @grid[4][col] = 2
    #   col += 1
    # end

    #find specific letter in array

    # row = 0
    # while row < @grid.length
    #   col = 0
    #   while col < @grid[0].length
    #     if @grid[row][col] == 1
    #       save_row = row
    #       save_col = col
    #     end
    #     col +=1
    #   end
    #   row +=1
    # end
    start = 0
    row = rand(0..@size)
    col = rand(0..@size)
    max_row = @size
    max_col = @size
        while start < 20
          word = a[start]
          word.split("").each do|letter|letter
           row = max_row if row > max_row
            col = max_col if col > max_col
            if @grid[row][col] == holder
            @grid[row][col] = letter
            col +=1
            end

          end
          start+=1

        end

    @grid
  end

end