card1 = Random.rand(1..13)
card2 = Random.rand(1..13)
card3 = Random.rand(1..13)
card4 = Random.rand(1..13)

if card1 > 10
  card1 = 10
end

if card2 > 10
  card2 = 10
end

if card3 > 10
  card3 = 10
end

if card4 > 10
  card4 = 10
end

hand = card1+card2
dealer_hand = card3 + card4

puts "手札は#{hand}です"
while hand<=32
  #以下プレーヤーの番です
  puts "カードを引きますか？ (yes:1 no:2)"
  choose = gets.chomp.to_i
    if choose == 1
      new_card = Random.rand(1..13)
      if new_card >=11
        new_card = 10
      end
      puts "配られたカードは#{new_card}です"
      hand = hand + new_card
      puts "現在の手札は#{hand}です"
      if hand >22
        puts "手札が21を超えました。あなたの負けです"
        break
      elsif hand == 21
        puts "手札が21になりました。"
        break
      end
    else
      break
    end
end

#以下ディーラーの番です
if hand < 22
  while dealer_hand<32
    if dealer_hand<17
      new_card = Random.rand(1..13)
      if new_card >=11
        new_card = 10
      end
      dealer_hand = dealer_hand + new_card
    elsif dealer_hand >= 17 && dealer_hand < 22
      puts "ディーラーの手札は#{dealer_hand}です"
      break
    elsif dealer_hand > 22
      puts "ディーラーの手札が21を超えました"
      break
    end
  end
end


#以下勝敗判定です
if hand<= 21 && dealer_hand <= 21
  if hand < dealer_hand
    puts "あなたの負けです"
  elsif hand > dealer_hand
    puts "あなたの勝ちです"
  elsif hand == dealer_hand
    puts "引き分けです"
  end
elsif hand <=21 && dealer_hand > 21
  puts "あなたの勝ちです"
end
