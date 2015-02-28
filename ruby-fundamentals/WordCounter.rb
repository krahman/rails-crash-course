class WordCounter
   def initialize(file_name)
      @file = File.read(file_name)
   end
   
   def count
      return @file.split.length
   end

   def uniq_count
      return @file.split.length
   end

   def frequency
      counts = {}
      @file.split.each do |w|
         if counts[w]
            counts[w] = counts[w] + 1
         else
            counts[w] = 1
         end
      end
   end
end
