# 問題1
question1 = Question.create!(content: "問題1")
question1.choices.create!(content: "選択肢1", correct: true)
question1.choices.create!(content: "選択肢2", correct: false)

# 問題2
question2 = Question.create!(content: "問題2")
question2.choices.create!(content: "選択肢1", correct: false)
question2.choices.create!(content: "選択肢2", correct: true)
