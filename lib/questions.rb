class Question
   attr_accessor :prompt, :answer

   @@all = []
   def initialize(prompt)
        @prompt = prompt
        @answer = answer
        @@all << self
   end

   example = Scraper.new
   rwp = example.get_words

   def self.all
     @@all
   end



end
