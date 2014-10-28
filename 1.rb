class Magic8Ball

  def initialize
    @answers = get_answer
  end

  def get_question
    puts 'Задавайте ваш вопрос'
    gets.chomp
  end

  def get_answer
    available_answers =
        ['Бесспорно', 'Предрешено', 'Никаких сомнений', 'Определённо да', 'Можешь быть уверен в этом', 'Мне кажется — «да»', 'Вероятнее всего', 
        'Хорошие перспективы', 'Знаки говорят — «да»', 'Да', 'Пока не ясно, попробуй снова', 'Спроси позже', 'Лучше не рассказывать', 
        'Сейчас нельзя предсказать', 'Сконцентрируйся и спроси опять', 'Даже не думай', 'Мой ответ — «нет»', 'По моим данным — «нет»', 
        'Перспективы не очень хорошие', 'Весьма сомнительно']
  end
  
  def shake
    puts "Я думаю..."
    sleep(3)
    @answers[rand(@answers.length)]
  end
end

ball = Magic8Ball.new
ball.get_question
puts ball.shake
