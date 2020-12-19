:-['C:/Users/Alexey/Desktop/4 course/Knowledge base/IndividualTasks/KnowledgeBase.pl'].

question1(X1):-	write("На каком континенте находится страна?"),nl,
				write("1. Северная Америка"),nl,
				write("2. Южная Америка"),nl,
				write("3. Европа"),nl,
				write("4. Азия"),nl,
				write("5. Австралия"),nl,
				write("6. Африка"),nl,
				write("7. Антарктида"),nl,
				read(X1).

question2(X2):-	write("Имеет ли страна морские границы (выход к океану)?"),nl,
				write("1. Да"),nl,
				write("2. Нет"),nl,
				read(X2).

question3(X3):-	write("В какой части континента находится большая часть страны?"),nl,
				write("1. Северная часть"),nl,
				write("2. Южная часть"),nl,
				write("3. Восточная часть"),nl,
				write("4. Западная часть"),nl,
				write("5. Северо-западная часть"),nl,
				write("6. Юго-западная часть"),nl,
				write("7. Юго-восточная часть"),nl,
                                write("8. Северо-западная часть"),nl,
				read(X3).

question4(X4):-	write("Население страны?"),nl,
				write("1. > 1 млр."),nl,
				write("2. < 200 млн. < 1 млр."),nl,
				write("3. < 100 млн. < 200 млн."),nl,
				write("4. < 60 млн. < 100 млн."),nl,
				write("5. < 35 млн. < 60 млн."),nl,
				write("6. < 20 млн. < 35 млн."),nl,
				write("7. < 15 млн. < 20 млн."),nl,
				write("8. < 10 млн. < 15 млн."),nl,
				write("9. < 9 млн. < 10 млн."),nl,
				write("10. < 7 млн. < 9 млн."),nl,
				write("11. < 5 млн. < 7 млн."),nl,
				write("12. < 3,5 млн. < 5 млн."),nl,
				write("13. < 3,5 млн."),nl,
				read(X4).

question5(X5):-	write("Форма правления:?"),nl,
				write("1. Президентская республика"),nl,
				write("2. Смешанная республика"),nl,
				write("3. Парламентская республика"),nl,
				write("4. Парламентская монархия"),nl,
				write("5. Дуалистическая монархия"),nl,
				write("6. Государства с однопартийной системой"),nl,
				write("7. Абсолютная монархия"),nl,
				read(X5).

start:-question1(X1),question2(X2),question3(X3),question4(X4), question5(X5),
		addAnswers([],X1,X2,X3,X4,X5).
	addAnswers(A,X1,X2,X3,X4,X5):-append(A, [X1,X2,X3,X4,X5], A1), checkCountry(A1).
	checkCountry(A1):-country(X, A1), write(X).
	checkCountry(A1):-not(country(_, A1)),
		write('Вы загадали неизвестную для меня страну, пожалуйста, скажите её название'), nl,
		read(New),
		open('C:/Users/Alexey/Desktop/4 course/Knowledge base/IndividualTasks/KnowledgeBase.pl', append, Stream),
		nl(Stream),
		write(Stream, 'country(\''), write(Stream, New),
		write(Stream, '\','), write(Stream, A1),
		write(Stream, ').'),
		close(Stream),
		consult(['C:/Users/Alexey/Desktop/4 course/Knowledge base/IndividualTasks/KnowledgeBase.pl']),
		write('Спасибо! Вы добавили следующую страну в наш список:'), nl, write(New).