def hello
	puts "Hello World"
end

#Перевод градусов
def gradus
	gradus = gets.to_f
	shkala = gets
	import = gets
	
	if shkala == "F\n"
		if import == "C\n"
			gradus1 = (gradus - 32) / 1.8
			puts "#{gradus} градусов по Фарингейту равно #{gradus1} градусам Цельсия"
		elsif import == "F\n"
			puts "Перевод в одну и ту же шкалу"	
		else
			gradus1 = (gradus + 459.67) / 1.8
			puts "#{gradus} градусов по Фарингейту равно #{gradus1} градусам Кельвина"
		end	
	elsif shkala == "C\n"
		if import == "F\n"
			gradus1 = gradus * 1.8 + 32 
			puts "#{gradus} градусов по Цельсию равно #{gradus1} градусам Фарингейта"
		elsif import == "C\n"
			puts "Перевод в одну и ту же шкалу"		
		else
			gradus1 = gradus + 273.15
			puts "#{gradus} градусов по Цельсию равно #{gradus1} градусам Кельвина"
		end	
	else
		if import == "C\n"
			gradus1 = gradus - 273.15
			puts "#{gradus} градусов Кельвина равно #{gradus1} градусам Цельсия"
		elsif import == "K\n"
			puts "Перевод в одну и ту же шкалу"		
		else
			gradus1 = gradus * 1.8 - 459.67
			puts "#{gradus} градусов Кельвина равно #{gradus1} градусам Фарингейта"
		end
	end			
end

#Определения палиндрома
def polyndrom
	puts "Введите слова для проверки"
	stroka = gets
	stroka = stroka.slice(0, stroka.length - 1)
	if stroka == stroka.reverse
		puts "Палиндром"
	else
		puts "Не палиндром"
	end		 
end

#Задача о размножении кроликов
def ukrol
	puts "Введите колличество месяцев"
	month = gets.to_i
	sq = Math.sqrt(5)
	sum = ((((sq + 1) / 2) ** month) / sq + 0.5).to_i
	puts " Колличество кролликов за указанный период равно #{sum}"
end	

#Работа с файлами 
def readfile  
    fh = open "pril4.csv"
    x = []
    while (line = fh.gets) 
       x.insert(x.length, line.to_f) 
    end
    fh.close
    return x
end

def metod
	puts " 1. Максимальное 2. Минимальное 3. Среднее значение 4. Исправленная дисперсия"
	x = readfile()
	disp = 0
   	value = gets.to_i
	    if value == 1
	    	puts x.max
	    elsif value == 2
	    	puts x.min
	    elsif value == 3 
	    	puts x.reduce(:+)
	    elsif value == 4
	    	avg = x.reduce(:+)/x.length
	    	x.each do |a|
	    		disp += (a - avg)**2
	    	end
	    	puts (disp)/(x.length - 1)
	    end
end

hello()
gradus()
polyndrom()
ukrol()
readfile()
metod()
