require_relative '../config/environment'

example = Scraper.new
rwp = example.get_words

answerkey1 =   AnswerCreator.new
answerkey2 =   AnswerCreator.new
 answerkey3 =  AnswerCreator.new
 answerkey4 =  AnswerCreator.new
 answerkey5 =  AnswerCreator.new
 answerkey6 =  AnswerCreator.new
 answerkey7 =  AnswerCreator.new
 answerkey8 =  AnswerCreator.new
 answerkey9 =  AnswerCreator.new
 answerkey10 = AnswerCreator.new



 options1 = answerkey1.answerOptions(rwp)
 options2 = answerkey2.answerOptions(rwp)
 options3 = answerkey3.answerOptions(rwp)
 options4 = answerkey4.answerOptions(rwp)
 options5 = answerkey5.answerOptions(rwp)
 options6 = answerkey6.answerOptions(rwp)
 options7 = answerkey7.answerOptions(rwp)
 options8 = answerkey8.answerOptions(rwp)
 options9 = answerkey9.answerOptions(rwp)
 options10 = answerkey10.answerOptions(rwp)



questions = [
question1 = Question.new("Which word means :  #{API.definition(options1["correctAnswer"][0])}\n (a)#{options1["a"]}\n(b)#{options1["b"]}\n(c)#{options1["c"]}\n(d)#{options1["d"]}\n"),
question2 = Question.new("Which word means :  #{API.definition(options2["correctAnswer"][0])}\n (a)#{options2["a"]}\n(b)#{options2["b"]}\n(c)#{options2["c"]}\n(d)#{options2["d"]}\n"),
question3 = Question.new("Which word means :  #{API.definition(options3["correctAnswer"][0])}\n (a)#{options3["a"]}\n(b)#{options3["b"]}\n(c)#{options3["c"]}\n(d)#{options3["d"]}\n"),
question4 = Question.new("Which word means :  #{API.definition(options4["correctAnswer"][0])}\n (a)#{options4["a"]}\n(b)#{options4["b"]}\n(c)#{options4["c"]}\n(d)#{options4["d"]}\n"),
question5 = Question.new("Which word means :  #{API.definition(options5["correctAnswer"][0])}\n (a)#{options5["a"]}\n(b)#{options5["b"]}\n(c)#{options5["c"]}\n(d)#{options5["d"]}\n"),
question6 = Question.new("Which word means :  #{API.definition(options6["correctAnswer"][0])}\n (a)#{options6["a"]}\n(b)#{options6["b"]}\n(c)#{options6["c"]}\n(d)#{options6["d"]}\n"),
question7 = Question.new("Which word means :  #{API.definition(options7["correctAnswer"][0])}\n (a)#{options7["a"]}\n(b)#{options7["b"]}\n(c)#{options7["c"]}\n(d)#{options7["d"]}\n"),
question8 = Question.new("Which word means :  #{API.definition(options8["correctAnswer"][0])}\n (a)#{options8["a"]}\n(b)#{options8["b"]}\n(c)#{options8["c"]}\n(d)#{options8["d"]}\n"),
question9 = Question.new("Which word means :  #{API.definition(options9["correctAnswer"][0])}\n (a)#{options9["a"]}\n(b)#{options9["b"]}\n(c)#{options9["c"]}\n(d)#{options9["d"]}\n"),
question10 = Question.new("Which word means :  #{API.definition(options10["correctAnswer"][0])}\n (a)#{options10["a"]}\n(b)#{options10["b"]}\n(c)#{options10["c"]}\n(d)#{options10["d"]}\n")
]

questions[0].answer = options1
questions[1].answer = options2
questions[2].answer = options3
questions[3].answer = options4
questions[4].answer = options5
questions[5].answer = options6
questions[6].answer = options7
questions[7].answer = options8
questions[8].answer = options9
questions[9].answer = options10


def cli_intro(questions)
  puts "HELLO WORLD"
  sleep(3)
  puts "Welcome to Rohit and Michael's SAT vocabulary prep"
  puts "Studies have shown you will get a minimum of 0% smarter by playing this game!"
  puts "Guaranteed OR YOUR MONEY BACK"
  sleep(3)
  puts "What would you like to do? (a)Start Quiz                  (b)View Highscores"
  puts "                           (c)End Game "
  userinput = gets.chomp
    if userinput.downcase == ("a")
      start(questions)
    elsif userinput.downcase == ("b")
      highscores()
    elsif userinput.downcase == ("c")
      puts "Thank You for playing hope you got a little bit smartupider"
    end

end

def start(questions)
  puts "Lets begin with the simple questions... whats your name?: "
  userinput = gets.chomp
  newUser = User.create(:name => userinput)
  puts "start quiz?(Y/N) "
  userinput = gets.chomp
  if userinput.casecmp("y")
    binding.pry
    quizCreate = Quiz.create(score:run_quiz(questions),user_id: newUser.id )
    scoreStore = Score.create(username: newUser.name, quiz_id: quizCreate.id, quiz_score: quizCreate.score)
    cli_intro(questions)
  elsif userinput.casecmp("n")
    cli_intro(questions)
  end
end


def highscores
  highscorers = Score.order(:username, quiz_score: :desc)
  i = 0
  j = 1
    puts "Name ---- Score"
  for  highscorer in highscorers
    puts "#{j}: #{highscorers[i].username}, #{highscorers[i].quiz_score}"
    i += 1
    j += 1
  end
end

cli_intro(questions)
