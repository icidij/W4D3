# PHASE 2
def convert_to_int(str)
  
  Integer(str)
  rescue 
    return 5 if str == 'five'
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]
class CoffeeError < StandardError; end
def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit.downcase == "coffee" 
    raise CoffeeError
  else
    raise StandardError 
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  begin
  maybe_fruit = gets.chomp
  reaction(maybe_fruit) 
  rescue CoffeeError
    puts "Thanks for the coffee, but I want fruit"
    retry
  end
end  

# PHASE 4
class YearError < ArgumentError; end
class StringLengthError < ArgumentError; end
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    # @name = name
    if yrs_known < 5
      raise YearError.new("That's not long enough, we will wait")
    else
      @yrs_known = yrs_known
    end
    begin
    if (fav_pastime.length <= 0) || (name.length <= 0)
      raise StringLengthError.new("We need a pastime and a name") 
    else
      @fav_pastime = fav_pastime
    end
  rescue YearError => e
    @yrs_known = 5
  rescue StringLengthError => e
    @name = ""
    @fav_pastime = ""
 
  end
end
  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


