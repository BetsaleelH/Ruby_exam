class Player
  def hand
   # Affichez une phrase qui permet au joueur de sélectionner une main pierre-papier-ciseaux.
    puts
    puts "Veuillez saisir un nombre."
    puts
    puts " 0: Goo"
    puts " 1: Choki "
    puts " 2: Par"
    puts

    #Remplacez la valeur d'entrée du joueur par la variable "input_hand".
    # ヒント：getsメソッドについて調べてみましょう。
    input_hand =gets.chomp
    #Si "input_hand" est soit "0, 1, 2", le processus itératif se termine, et si ce n'est pas le cas (y compris l'alphabet), le processus itératif continue.
    while true
       al=[0,1,2].sample
       tab =["0","1","2"].include?(input_hand)
          if tab
              return input_hand.to_i
          else
              puts
              puts " Veuillez saisir 0 : Goo 1: choki  2: par "
              input_hand =gets.chomp
          end         
    end
  end
end
#----------------------------------------------------------------------------------------------------------------------------
class Enemy
  def hand
    choix_al=[0,1,2].sample
      return choix_al
  end
end
enemy=Enemy.new
enemy_hand = enemy.hand
# puts enemy.hand


player = Player.new

 player_hand = player.hand

 #--------------------------------------------------------------------------------------------------------------------------

 class Janken
  def pon(player_hand, enemy_hand)
    # Remplacez ["goo", "choki", "par"] la variable "janken".
    janken = ["Pierre", "Papier", "Ciseaux"]
    #「相手の手は#{相手の手}​」と出力させます。
    puts "Votre Main #{janken[player_hand]}"
    puts "Main de l'adversaire #{janken[enemy_hand]}"

    #Si la Valeur de retour de la classe Player (player_hand) et la Valeur de retour de la classe Enemy (enemy_hand) sont identiques
    if (player_hand == 0 && enemy_hand == 0) || (player_hand == 1 && enemy_hand == 1) || (player_hand == 2 && enemy_hand == 2)
        puts "Vous etes à égalité "
      
    elsif (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
       puts "Vous avez gagné "      
    else
      puts "Vous avez perdu"
    end
  end
end

#-------------------------------------------------------------------------------------------------------------------------------
class GameStart
      def self.jankenpon
          player = Player.new
          enemy = Enemy.new
          janken =Janken.new
            next_game = true
           while next_game ==true do 
              next_game = janken.pon(player.hand,enemy.hand)
              puts "voulez vous continuer"
           end
      end
end

#janken =Janken.new
#janken.pon(player_hand,enemy_hand)
 GameStart.jankenpon