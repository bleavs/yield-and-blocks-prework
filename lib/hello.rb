def hello_t(array)
    if block_given?
        i = 0
        new_array = []
        
        while i < array.length
            
         if array[i].start_with?("T")||array[i].start_with?("t")
            new_array.push(array[i])
            yield(array[i])
        end
         
            i += 1
        end
        
        new_array
    else
        puts "Hey! No block was given!"
    end
end
  
# call your method here!

hello_t(["Tim", "Tom", "Jim"]) do |name|
    if name.start_with?("T")
        puts "Hi, #{name}"
    end
end
