# 問題1
question1 = Question.create!(content: "カナダの首都はトロントである")
question1.choices.create!(content: "はい", correct: false)
question1.choices.create!(content: "いいえ", correct: true)

# 問題2
question1 = Question.create!(content: "カナダには国王がいる")
question1.choices.create!(content: "はい", correct: true)
question1.choices.create!(content: "いいえ", correct: false)

# 問題3
question2 = Question.create!(content: "カナダの公用語は英語とフランス語である")
question2.choices.create!(content: "はい", correct: true)
question2.choices.create!(content: "いいえ", correct: false)

# 問題4
question1 = Question.create!(content: "ジンジャーエールはカナダ人によって発明された")
question1.choices.create!(content: "はい", correct: true)
question1.choices.create!(content: "いいえ", correct: false)

# 問題5
question1 = Question.create!(content: "カナダ国内には4つのタイムゾーンがある")
question1.choices.create!(content: "はい", correct: false)
question1.choices.create!(content: "いいえ", correct: true)

# 問題6
question1 = Question.create!(content: "イーロン・マスクはカナダの大学出身である")
question1.choices.create!(content: "はい", correct: true)
question1.choices.create!(content: "いいえ", correct: false)

# 問題7
question2 = Question.create!(content: "カナダの国獣はグースである")
question2.choices.create!(content: "はい", correct: false)
question2.choices.create!(content: "いいえ", correct: true)

# 問題8
question2 = Question.create!(content: "赤毛のアンで有名な島はカナダのキング・エドワード島である")
question2.choices.create!(content: "はい", correct: false)
question2.choices.create!(content: "いいえ", correct: true)


