
class MatrixRotation
	def self.rotate(x,min_row, max_row, min_col, max_col)

		temp_left_bottom = x[max_row][min_col]
		temp_right_top = x[min_row][max_col]

		col_temp = x[min_row][min_col]
		(min_row+1..max_row).each do |num|
			temp = x[num][min_col]
			x[num][min_col] = col_temp
			col_temp = temp

			x[num-1][max_col] = x[num][max_col] 
		end

		row_bottol_temp = temp_left_bottom
		row_top_temp = temp_right_top

		(min_col+1..max_col).each do |num|
			temp_bottom = x[max_row][num]
			x[max_row][num] = row_bottol_temp
			row_bottol_temp = temp_bottom

			if(num!= max_col)
				x[min_row][num-1]  = x[min_row][num] 
			else
				x[min_row][num-1] = row_top_temp
			end
		end

	end

	def self.print_matrix(x,m,n)
		i = 0
		j = 0

		while(i<m)
			j=0
			while(j<n)
				print x[i][j]
				print " "
				j+=1
			end
			i+=1
			print "\n"
		end

	end


	def self.whole_matrix_rotation(x,min_row, max_row, min_col, max_col,rotation_num)
		while((min_row<max_row) && (min_col<max_col))
			original_rot  = 2 * ( max_row-min_row + max_col - min_col )
			num = rotation_num % original_rot
			(0..num-1).each do |n|
				rotate(x,min_row, max_row, min_col, max_col)
			end

			min_row+=1
			min_col+=1
			max_row-=1
			max_col-=1
		end
	end
end


# line = gets.chomp
# data = line.split(" ")



# m =data[0].to_i
# n =data[1].to_i
# r=data[2].to_i


# x =[]
# (0..m-1).each do |num|
# line = gets.chomp
# data = line.split(" ")
# y = []
# (0..n-1).each do |col|
# y << data[col].to_i
# end
# x << y

# end 

m  = 4
n = 4
rotation = 1

matrix = [[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]]


min_row = 0
max_row = m-1
min_col = 0
max_col = n-1

puts "***** Input Matrix ****** \n"
MatrixRotation.print_matrix(matrix,m,n)

MatrixRotation.whole_matrix_rotation(matrix,min_row, max_row, min_col, max_col,rotation)

puts "\n\n ***** Anticlock Rotated Matrix ****** \n"
MatrixRotation.print_matrix(matrix,m,n)



