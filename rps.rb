require "csv" 
puts "じゃんけん・・・", "0(グー）1(チョキ)2(パー）3(戦わない)"                           

def janken_game
  num_type = gets.to_i
  junkens_array = ["グー","チョキ","パー"]
  program_selection = rand(3)
  
  #じゃんけん
  case num_type                                                               
  when 0
    puts "ホイ！","-----------","あなた：グーを出しました","相手：#{junkens_array[program_selection]}を出しました"
  when 1
    puts "ホイ！","-----------","あなた：チョキを出しました","相手：#{junkens_array[program_selection]}を出しました"
  when 2
    puts "ホイ！","-----------","あなた：パーを出しました","相手：#{junkens_array[program_selection]}を出しました"
  when 3
    puts "終了します、Ctr + D を押してください"
    num_type = STDIN.read
    return false
  else
    puts "エラー：0か1か2か3を入力してください"
    return true
  end
  
  
  #じゃんけん勝敗
    if num_type == program_selection                                            #引き分け
      puts "-----------","あいこで〜","0(グー)1(チョキ)2(パー)3(戦わない)"
      return true
    elsif (num_type == 0 && program_selection == 1) ||(num_type == 1 && program_selection == 2) || (num_type == 2 && program_selection == 0)  #勝ち
      puts "-----------","あっちむいて〜","0(上)1(下)2(右)3(左)""ほい！"
      finger_num = gets.to_i
      face_dilation = ["上","下","右","左"]
      face_selection = rand(4)
      case finger_num                          #あっちむいてほい
      when 0
        puts "あなた：上","相手：#{face_dilation[face_selection]}"
      when 1
        puts "あなた：下","相手：#{face_dilation[face_selection]}"
      when 2
        puts "あなた：右","相手：#{face_dilation[face_selection]}"
      when 3
        puts "あなた：左","相手：#{face_dilation[face_selection]}"
      else
        puts "0か1か2か3を入力してください"
        return true
      end
    else                                                                        #負け
      puts "あなたの負けです","勝つまで続きます","-----------","じゃんけん・・・","0(グー）1(チョキ)2(パー）3(戦わない)"
      return true
    end
      
      if finger_num == face_selection
        puts "あなたの勝利です！"
      else
        puts "方向が違います","もう一度じゃんけんからです","0(グー）1(チョキ)2(パー）3(戦わない)"
        return true
      end
end
  next_game = true
  while next_game do
    next_game = janken_game
  end
