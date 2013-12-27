def pt(row_wanted)
  triangle = [[1], [1,1]]
  return triangle[row_wanted] if row_wanted < 2
  2.upto(row_wanted) do |row_index|
  	next_row = []
  	col_ct = row_index + 1
  	col_ct.times do |col_index|
		if col_index == 0 || col_index == col_ct - 1
			next_row[col_index] = 1
		else
			next_row << triangle[row_index-1][col_index-1] + triangle[row_index-1][col_index]

		end
	end
	triangle << next_row
  end
  triangle[row_wanted]
end