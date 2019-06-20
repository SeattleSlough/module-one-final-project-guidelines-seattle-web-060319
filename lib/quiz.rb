
require_relative '../config/environment'

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

     def correct_answer(arr)
          answer = filter(arr)
          Answer.create(word: filter(arr))
          if answer == Answer.find_by(word: answer)
               correct_answer(arr)
          else 
               Answer.create(word: answer)
          end
          return answer
     end


  def fake_answer(rwp)
    words = filter(rwp)
    words
  end

class Question
   attr_accessor :prompt, :answer
   def initialize(prompt)
        @prompt = prompt
        @answer = answer
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

  def run_quiz(questions, answers, options)
    correctAnswer = answers[0]
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


