answer = nil

until answer == 1 || answer == 2
    puts "Вы входите в магический лес, перед вами появляется загадочная лавка..."

    puts "1. Войти в магазин."
    puts "2. Выйти из леса."
    puts "Ваши действия: "

    answer = gets.chomp()

    if answer == "1"
        until answer == 1 || answer == 2 || answer == 3
            puts "Вы входите в лавку..."
            puts "Войдя в лавку Вы видите много различных товаров, от простых настоек до высококачественных зелий..."
            puts "Вдруг Вы замечаете непреметного владельца который занят какимто делом возле непонятного аппарата..."
        
            puts "1. Поговорить."
            puts "2. Как у Вас дела?"
            puts "3. Купить."
            puts "Ваши действия: "
        
            answer = gets.chomp()
            
            if answer == "1"
                puts "Приветствую путник, я владелец этой лавки!"

                exit  # exit from code
            elsif answer == "2"
                puts "Хорошо"

                exit  # exit from code
            elsif answer == "4"
                puts "Вы нашли секретный предмет!"

                exit  # exit from code
            elsif answer == "3"
                timeWorld = Time.now()
        
                if timeWorld.hour() > 9 and timeWorld.hour() < 18
                    puts "На продажу есть Простая настойка, зелье здоровья и зелье маны."
                    puts "Что будете покупать: "

                    itemShop = gets.chomp()
                    puts "Проданно, " + itemShop + " 1шт."

                    exit  # exit from code
                else
                    puts "Лавка закрыта в это время суток"

                    exit  # exit from code
                end
            end
        end
    elsif answer == "2"
        puts "Вы уходите из леса, приключения завершенны!"

        exit  # exit from code
    end
end