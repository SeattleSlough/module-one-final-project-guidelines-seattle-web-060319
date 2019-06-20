
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



  def run_quiz(questions)
    # correctAnswer = options["correctAnswer"][0]

    answer = ""
    score = 0

    for question in questions
      i = 0
      binding.pry
        puts question.prompt
        user = gets.chomp()
      if questions[i].answer["correctAnswer"][0] == questions[i].answer[user]
        i += 1
        score += 1
      elsif questions[i].answer["correctAnswer"][0] != questions[i].answer[user]
         score -= 1
         i += 1
          end
       end

       puts "you got #{score} out of #{questions.length()}"
       return score
     end
