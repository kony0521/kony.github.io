red_numbers = [1,3,5,7,9,12,14,16,18,19,21,23,25,27,30,32,34,36]
black_numbers = [2,4,6,8,10,11,13,15,17,20,22,24,26,28,29,31,33,35]

credit = 30

  while credit > 0
    roulette1 = Random.rand(1..36)

    puts "賭け方を選んでください"
    how_to_bet = gets.chomp.to_i
    if how_to_bet == 1
      puts "ルーレットの目を選んでください"
      choice = gets.chomp.to_i
    elsif how_to_bet == 2
      puts "Odd or Even?(1:Odd　2:Even)"
      choice_odd_or_even =gets.chomp.to_i
      if choice_odd_or_even == 1
        choice = 37
      else
        choice = 38
      end
    elsif how_to_bet == 3
      puts "Big or Small?(1:Big 2:Small)"
      choice_big_or_small = gets.chomp.to_i
      if choice_big_or_small == 1
        choice = 39
      else
        choice = 40
      end
    elsif how_to_bet == 4
      puts "Red or Black?(1:Red 2:Black)"
      choice_red_or_black = gets.chomp.to_i
      if choice_red_or_black == 1
        choice = 41
      else
        choice = 42
      end
    end
    puts "掛け金を入力してください"
    bet = gets.chomp.to_i

    puts "出た目は#{roulette1}です"

    if roulette1 == choice
      puts "アタリです"
      puts "払い戻し金額は#{bet*36}です"
      credit +=  bet*35
    elsif roulette1%2 == 1 && choice == 37 || roulette1%2 == 0 && choice == 38 || roulette1 <=18 && choice == 39 || roulette1 > 18 && choice == 40; 　
      puts "アタリです"
      puts "払い戻し金額は#{bet*2}です"
      credit += bet
    elsif red_numbers.include?(roulette1) == true && choice == 41 || black_numbers.include?(roulette1) == true && choice == 42;
      puts "アタリです"
      puts "払い戻し金額は#{bet*2}です"
    else
      puts "ハズレです"
      credit -= bet
    end
    puts "残金は#{credit}です"
    if credit < 0
      puts "ゲームオーバーです"
    end
  end
