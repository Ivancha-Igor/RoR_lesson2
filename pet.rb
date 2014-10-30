class Pet

  def initialize(name, type)
    @name = name
    @type = type
    @age = 0		# initial age
    @mood = 10		# it is very good mood
    @hunger = 10	# it isn't hungry
    @asleep = 10	# it doesn't want to sleep
    @clean = 10		# it isn't dirty
    @walk = 10		# it doesn't want to walk
    @energy = 10	# it is full of energy
    
    puts "You create #{@type} #{@name}"
    puts "10 - help"
    goToMenu
  end
  
  def goToWalk
    @walk += 3
    @mood += 1
    @clean -= 2
    @hunger -= 1
    @asleep -= 2
    @energy -= 2
    timeGo
    goToMenu
  end
  
  def goToEat
    @hunger += 6
    @energy += 3
    @mood += 2
    @clean -= 1
    @asleep -= 2
    timeGo
    goToMenu
  end
  
  def goToSleep
    @asleep += 8
    @energy += 2
    @mood -= 1
    @hunger -= 1
    @walk -= 3
    timeGo
    goToMenu
  end

  def goToShower
    @clean += 8
    @walk -= 1
    @mood -= 1
    @hunger -= 1
    @energy -= 2
    timeGo
    goToMenu
  end

  def goToPlay
    @mood += 3
    @asleep -= 1
    @clean -= 2
    @hunger -= 2
    @energy -= 3
    timeGo
    goToMenu
  end

  def toCarees
    @mood += 3
    @walk -= 1
    @asleep -= 1
    timeGo
    goToMenu
  end

  def toPunish
    @asleep -= 1
    @energy -= 1
    @hunger -= 1
    @mood -= 5
    timeGo
    goToMenu
  end

  def toWatch
    timeGo
    goToMenu
  end

  def toHelp
    puts "1 - your pet walks and receives points of walk and mood, but loses points of clean, hunger, asleep and energy"
    puts "2 - your pet eats and receives points of hunger, energy and mood, but loses points of clean and asleep"
    puts "3 - your pet sleeps and receives points of asleep and energy, but loses points of mood, hunger and walk"
    puts "4 - your pet washes and receives points of clean, but loses points of walk, mood, hunger and energy"
    puts "5 - your pet plays and receives points of mood, but loses points of asleep, clean, hunger and energy"
    puts "6 - your pet receives carees and points of mood, but loses points of walk and asleep"
    puts "7 - your pet receives punishment and  loses points of asleep, energy, hunger and mood"
    puts "8 - you want just to watch for pet"
    puts "9 - all params of your pet"
    puts "10 - help"
    goToMenu
  end

  def showInfo
    puts "Some info about your pet:"
    puts "Your #{@type} #{@name}"
    puts "Age- #{@age}"
    puts "Mood- #{@mood}"
    puts "Hunger- #{@hunger}"
    puts "Asleep- #{@asleep}"
    puts "Clean- #{@clean}"
    puts "Walk- #{@walk}"
    puts "Energy- #{@energy}"
    goToMenu
  end

  def goToMenu
    puts "Choose a type of action:"
    goToMenu = gets.chomp
    case goToMenu.to_i
      when 1
        goToWalk
      when 2
        goToEat
      when 3
        goToSleep
      when 4
        goToShower
      when 5
        goToPlay
      when 6
        toCarees
      when 7
        toPunish
      when 8
        toWatch
      when 9
        showInfo
      when 10
        toHelp
    end
  end

  private

  def timeGo
    @age += 1
    @mood -= rand(3)
    @hunger -= rand(3)

    if @age > 25
      puts "Your #{@type} #{@name} was very old and died"
      exit
    end
    if @mood > 25
      puts "Your #{@type} #{@name} was crazy and started to bite you and you gave it to your friends"
      exit
    end
    if @hunger <= 0
      puts "Your #{@type} #{@name} was very hungry and died"
      exit
    end
  end
end

puts "What type of animal do you like?"
type = gets.chomp
puts "What is name of your pet?"
name = gets.chomp

myPet = Pet.new(type, name)
myPet.goToMenu
