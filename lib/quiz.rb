require_relative '../config/environment'

class Quiz

  attr_accessor :rwp

  def initialize(rwp)
    @rwp = rwp
  end


example = Scraper.new

rwp = example.get_words


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

    def fake_answer(thing)
      words = filter(thing)
      words
    end



  wrongAns1 = fake_answer(rwp)
  wrongAns2 = fake_answer(rwp)
  wrongAns3 = fake_answer(rwp)
  wrongAns4 = fake_answer(rwp)
  correctAns = filter(rwp)






  answerArr = [correctAns, fake_answer(rwp), fake_answer(rwp), fake_answer(rwp)]

  optionA = answerArr.sample
  answerArr.delete(optionA)
  optionB = answerArr.sample
  answerArr.delete(optionB)
  optionC = answerArr.sample
  answerArr.delete(optionC)
  optionD = answerArr.sample
  answerArr.delete(optionD)
  answerArr1 = [correctAns, fake_answer(rwp), fake_answer(rwp), fake_answer(rwp)]

  options = {'a' => optionA, 'b' => optionB, 'c' => optionC, 'd' => optionD}


  def question(optionA,optionB,optionC,optionD)

    p1 = "Which of the following words means: -puts definition here- ?\n(a) #{optionA}\n(b)#{optionB}\n(c)#{optionC}\n(d)#{optionD}"
    #p2 = "Which of the following words means: -puts definition here- ?\n(a) #{correctAns}\n(b)#{fake_answer(example)}\n(c)#{fake_answer(example)}\n(d)#{fake_answer(example)}"

    questions = [p1]

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
end
quiz1 = Quiz.new
binding.pry
