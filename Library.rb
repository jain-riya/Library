	class Management
	  	@@arrayBook = Array.new(10) 
		@@i=0
		@@count=0
		def addBook(book)
			@@arrayBook.push(book)
		    @@i+=1
			@@count+=1
		end
		def deleteBook(book)
			  if @@arrayBook.include? book
		  	@@arrayBook -= [book]
		  else
		  	puts "No such book present"
		  end
		end
		def display
		   puts " Following books are there in the stock"
		   @@arrayBook.each { |book| puts book } 
		end
	end

		class Library
			@@book_name= ""
			obj=Management.new
			@@choice= 0
			while true
				puts "1:Enter the book\n2:Delete the book\n3:display the stock\n4:Exit"
				@@choice= gets.chomp.to_i
				case @@choice
				when 1
					puts "Enter the name of book"
					@@book_name= gets.chomp
				    obj.addBook(@@book_name)
					
				when 2
					puts "Enter the name of book"
					@@book_name= gets.chomp
					obj.deleteBook(@@book_name)
					
				when 3
					obj.display
					
				when 4
					exit
				else
					puts "Wrong entry"
				end
			end
		end
		


