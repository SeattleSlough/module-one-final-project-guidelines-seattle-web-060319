require_relative '../config/environment'



class Answer
  example = Scraper.new
  rwp = example.get_words




  def createAns(rwp)
  newAns = filter(rwp)
  newAns
  end

  def correct_Answer(rwp)
    correctAnswer = createAns(rwp)
    correctAnswer
  end

  def wrong_Answer(rwp)
    wrongAnswer = createAns(rwp)
    wrongAnswer
  end



  def create_ans_arr(rwp)
  answerArr = [ correct_Answer(rwp), wrong_Answer(rwp), wrong_Answer(rwp), wrong_Answer(rwp)]
  answerArr
  end


  def answerOptions(rwp)
    answerArray = self.create_ans_arr(rwp)
    correct = [answerArray[0]]
    optionA = answerArray.sample
    answerArray.delete(optionA)
    optionB = answerArray.sample
    answerArray.delete(optionB)
    optionC = answerArray.sample
    answerArray.delete(optionC)
    optionD = answerArray.sample


    options = {'a' => optionA, 'b' => optionB, 'c' => optionC, 'd' => optionD, 'correctAnswer' => correct}
  end

end
