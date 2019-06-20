require_relative '../config/environment'

puts "HELLO WORLD"

example = Scraper.new
rwp = example.get_words






wrongAns1 = fake_answer(rwp)
wrongAns2 = fake_answer(rwp)
wrongAns3 = fake_answer(rwp)

correctAns = filter(rwp)

answerArr = [correctAns, wrongAns1, wrongAns2, wrongAns3]

optionA = answerArr.sample
answerArr.delete(optionA)
optionB = answerArr.sample
answerArr.delete(optionB)
optionC = answerArr.sample
answerArr.delete(optionC)
optionD = answerArr.sample
answerArr.delete(optionD)
answerArr1 = [correctAns, wrongAns1, wrongAns2, wrongAns3]

options = {'a' => optionA, 'b' => optionB, 'c' => optionC, 'd' => optionD}
quetionArray =
[ a ="Which of the following words means: -puts definition here- ?\n(a) #{optionA}\n(b)#{optionB}\n(c)#{optionC}\n(d)#{optionD}",
 b ="Which of the following words means: -puts definition here- ?\n(a) #{optionA}\n(b)#{optionB}\n(c)#{optionC}\n(d)#{optionD}",
 c ="Which of the following words means: -puts definition here- ?\n(a) #{optionA}\n(b)#{optionB}\n(c)#{optionC}\n(d)#{optionD}",
 d ="Which of the following words means: -puts definition here- ?\n(a) #{optionA}\n(b)#{optionB}\n(c)#{optionC}\n(d)#{optionD}",
 e ="Which of the following words means: -puts definition here- ?\n(a) #{optionA}\n(b)#{optionB}\n(c)#{optionC}\n(d)#{optionD}",
 f ="Which of the following words means: -puts definition here- ?\n(a) #{optionA}\n(b)#{optionB}\n(c)#{optionC}\n(d)#{optionD}",
 g ="Which of the following words means: -puts definition here- ?\n(a) #{optionA}\n(b)#{optionB}\n(c)#{optionC}\n(d)#{optionD}",
 h ="Which of the following words means: -puts definition here- ?\n(a) #{optionA}\n(b)#{optionB}\n(c)#{optionC}\n(d)#{optionD}",
 i ="Which of the following words means: -puts definition here- ?\n(a) #{optionA}\n(b)#{optionB}\n(c)#{optionC}\n(d)#{optionD}",
 j ="Which of the following words means: -puts definition here- ?\n(a) #{optionA}\n(b)#{optionB}\n(c)#{optionC}\n(d)#{optionD}"]
questions = quetionArray.each { |obj| Question.new(obj) }
binding.pry
0
run_quiz(questions,answerArr1,options)
