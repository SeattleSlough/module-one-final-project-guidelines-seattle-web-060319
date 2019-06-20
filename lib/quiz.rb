require_relative '../config/environment'



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




    def filter(rwp)#returns clean word for API

        filtered_word = []
        word = rwp.sample
        if word.include?(",") || word.include?("(")
            filter(rwp)
        else
            filtered_word.push(word)
            return filtered_word[0]
        end
    end

    def fake_answer(rwp)
      words = filter(rwp)
      words
    end


  def run_quiz(questions,options)

    correctAnswer = options["correctAnswer"][0]
    answer = ""
    score = 0

    for question in questions
        puts question.prompt
        answer = gets.chomp()
      if correctAnswer == options[answer]
        score += 1
      elsif correctAnswer != options[answer]
         score -= 1
          end
       end

       puts "you got #{score} out of #{questions.length()}"
       return score
     end
