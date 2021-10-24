@result = [0, 0]
def janken
  def game
    jankens = ["g", "c", "p"]
    cpu = jankens.sample
    puts "じゃんけん(g (グー), c(チョキ), p(パー)）を選択してください"
    user = gets.chomp
    puts "CPU #{cpu}"
    puts "あなた #{user}"
    
    if user == cpu
      return true
    elsif (user == "g" && cpu == "c") || (user == "c" && cpu == "p") || (user == "p" && cpu == "g")
      puts "あなたの勝ちです"
      @result[0] += 1
      puts "#{@result[0]}勝#{@result[1]}敗"
      return false
    elsif (user == "c" && cpu == "g") || (user == "p" && cpu == "c") || (user == "g" && cpu == "p")
      puts "あなたの負けです"
      @result[1] += 1
      puts "#{@result[0]}勝#{@result[1]}敗"      
      return false
    end
    unless (user == "g") || (user == "c") || (user == "p")
      puts "値が無効です(g, c, p のいずれかを選択してください)"
      return true
    end

  end  
  next_game = true
  while next_game do
    next_game = game
  end
end
puts "対戦回数を選んでください(1 or 3 or 5)"
num = gets.chomp
puts "#{num}本勝負"
case num
when "1"
  puts "1本勝負を選びました"
  1.times do
    puts janken
  end
  if @result[0] >= 1
    puts "#{@result[0]}勝#{@result[1]}敗であなたの勝ち"
  else
    puts "#{@result[0]}勝#{@result[1]}敗であなたの負け"
  end
when "3"
  puts "3本勝負を選びました"
  3.times do
    puts janken
  end
  if @result[0] >= 2
    puts "#{@result[0]}勝#{@result[1]}敗であなたの勝ち"
  else
    puts "#{@result[0]}勝#{@result[1]}敗であなたの負け"
  end
when "5"
  puts "5本勝負を選びました"
  5.times do
    puts janken
  end
  if @result[0] >= 3
    puts "#{@result[0]}勝#{@result[1]}敗であなたの勝ち"
  else
    puts "#{@result[0]}勝#{@result[1]}敗であなたの負け"
  end
end
