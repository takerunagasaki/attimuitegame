puts "じゃんけん・あっち向いてホイ"
janf = -1
meyou = ["","あなた","相手"]
jan = []
drow = ["あいこです！","引き分け！"]
i = 0
 while 1

    if i > 1 then
      i = 0
    end

    if i == 0 then
      puts "-----------------------------------"
      if janf == 0 then
        puts "あいこで！ グー(1) チョキ(2) パー(3) 終わる(0)"
      else
        puts "じゃんけん！ グー(1) チョキ(2) パー(3) 終わる(0)"
      end
      puts "1,2,3,0のいずれかを入力してください"
      sel = ["終わる","グー","チョキ","パー"]
      jan[2] = Random.rand(1..3)
      
    elsif i == 1 then
      puts "あっち向いて！上(0) 下(1) 左(2) 右(3)"
      puts "0,1,2,3のいずれかを入力してください"
      sel = ["上","下","左","右"]
      jan[2] = Random.rand(3)
    end
    
    jan[1] = gets.to_i
    #cjan = Random.rand(3)+i
    

    for j in 1..2 do
      case jan[j]
        when 0
          puts "#{meyou[j]}が選んだのは”#{sel[jan[j]]}”"
          if i == 0 then
            exit
          end
        when 1
          puts "#{meyou[j]}が選んだのは”#{sel[jan[j]]}”"
        when 2
          puts "#{meyou[j]}が選んだのは”#{sel[jan[j]]}”"
        when 3
          puts "#{meyou[j]}が選んだのは”#{sel[jan[j]]}”"
        else
          puts "判定がいのものが入力されました。もう一度"
          bf = 1
          break
      end
    end
    
    if bf == 1
      bf = 0
      redo
    end
    
    if (jan[1] == 0 && jan[2] == 0) || (jan[1] == 1 && jan[2] == 1) || (jan[1] == 2 && jan[2] == 2) || (jan[1] == 3 && jan[2] == 3) then
    
      if i == 0 then
        janf = 0
      elsif i == 1 && janf == 1 then
        janf = 1
      elsif i == 1 && janf == 2 then
        janf = 2
      end
    elsif i == 1 && jan[1] != jan[2] then
      
      janf = 0
      
    elsif (jan[1] == 1 && jan[2] == 2) || (jan[1] == 2 && jan[2] == 3) || (jan[1] == 3 && jan[2] == 1) then
      janf = 1
    
    elsif  (jan[1] == 1 && jan[2] == 3) || (jan[1] == 3 && jan[2] == 2) || (jan[1] == 2 && jan[2] == 1) then

      janf = 2

    end
    
    case janf
      when 0
        puts drow[i]
        if i == 1 then
          janf = -1
        end
        i = 0;
        redo
      when 1
        puts "あなたの勝ちです。"
      
      when 2
        puts "あなたの負けです。"
    end

    i += 1
end