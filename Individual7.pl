:-['C:/Users/Alexey/Desktop/4 course/Knowledge base/IndividualTasks/KnowledgeBase.pl'].

question1(X1):-	write("�� ����� ���������� ��������� ������?"),nl,
				write("1. �������� �������"),nl,
				write("2. ����� �������"),nl,
				write("3. ������"),nl,
				write("4. ����"),nl,
				write("5. ���������"),nl,
				write("6. ������"),nl,
				write("7. ����������"),nl,
				read(X1).

question2(X2):-	write("����� �� ������ ������� ������� (����� � ������)?"),nl,
				write("1. ��"),nl,
				write("2. ���"),nl,
				read(X2).

question3(X3):-	write("� ����� ����� ���������� ��������� ������� ����� ������?"),nl,
				write("1. �������� �����"),nl,
				write("2. ����� �����"),nl,
				write("3. ��������� �����"),nl,
				write("4. �������� �����"),nl,
				write("5. ������-�������� �����"),nl,
				write("6. ���-�������� �����"),nl,
				write("7. ���-��������� �����"),nl,
                                write("8. ������-�������� �����"),nl,
				read(X3).

question4(X4):-	write("��������� ������?"),nl,
				write("1. > 1 ���."),nl,
				write("2. < 200 ���. < 1 ���."),nl,
				write("3. < 100 ���. < 200 ���."),nl,
				write("4. < 60 ���. < 100 ���."),nl,
				write("5. < 35 ���. < 60 ���."),nl,
				write("6. < 20 ���. < 35 ���."),nl,
				write("7. < 15 ���. < 20 ���."),nl,
				write("8. < 10 ���. < 15 ���."),nl,
				write("9. < 9 ���. < 10 ���."),nl,
				write("10. < 7 ���. < 9 ���."),nl,
				write("11. < 5 ���. < 7 ���."),nl,
				write("12. < 3,5 ���. < 5 ���."),nl,
				write("13. < 3,5 ���."),nl,
				read(X4).

question5(X5):-	write("����� ���������:?"),nl,
				write("1. ������������� ����������"),nl,
				write("2. ��������� ����������"),nl,
				write("3. ������������� ����������"),nl,
				write("4. ������������� ��������"),nl,
				write("5. �������������� ��������"),nl,
				write("6. ����������� � ������������� ��������"),nl,
				write("7. ���������� ��������"),nl,
				read(X5).

start:-question1(X1),question2(X2),question3(X3),question4(X4), question5(X5),
		addAnswers([],X1,X2,X3,X4,X5).
	addAnswers(A,X1,X2,X3,X4,X5):-append(A, [X1,X2,X3,X4,X5], A1), checkCountry(A1).
	checkCountry(A1):-country(X, A1), write(X).
	checkCountry(A1):-not(country(_, A1)),
		write('�� �������� ����������� ��� ���� ������, ����������, ������� � ��������'), nl,
		read(New),
		open('C:/Users/Alexey/Desktop/4 course/Knowledge base/IndividualTasks/KnowledgeBase.pl', append, Stream),
		nl(Stream),
		write(Stream, 'country(\''), write(Stream, New),
		write(Stream, '\','), write(Stream, A1),
		write(Stream, ').'),
		close(Stream),
		consult(['C:/Users/Alexey/Desktop/4 course/Knowledge base/IndividualTasks/KnowledgeBase.pl']),
		write('�������! �� �������� ��������� ������ � ��� ������:'), nl, write(New).