

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
    correct = 0
    i = 0



    for question in questions

      facts = questions[i].answer["correctAnswer"][0]


        puts question.prompt
        user = gets.chomp()

      if facts == questions[i].answer[user]
        i += 1
        score += 1
        correct += 1
        puts "CORRECT!"
        sytem('clear')

      elsif facts != questions[i].answer[user]
         score -= 1
         i += 1
         puts "WAH WAH, the correct answer is #{facts}"
         system('clear')
          end
        end

       puts "you got #{correct} out of #{questions.length()}"
       return score
     end



     class Quiz < ActiveRecord::Base

     end
