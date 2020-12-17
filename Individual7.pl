continent(canada,1).
continent(usa,1).
continent(mexico,1).
continent(cuba,1).
continent(dominicana,1).
continent(brazilian,2).
continent(pery,2).
continent(argentina,2).
continent(chili,2).
continent(paraguay,2).
continent(islandia,3).
continent(uk,3).
continent(france,3).
continent(italia,3).
continent(spain,3).
continent(irlande,3).
continent(avstriya,3).
continent(romania,3).
continent(denmark,3).
continent(norway,3).
continent(sweden,3).
continent(finland,3).
continent(belarusian,3).
continent(russia,3).
continent(russia,4).
continent(china,4).
continent(india,4).
continent(saudi_arabia,4).
continent(japan,4).
continent(avstraliya,4).
continent(egipt,6).
continent(botswana,6).

sea_side(canada,1).
sea_side(usa,1).
sea_side(mexico,1).
sea_side(cuba,1).
sea_side(dominicana,1).
sea_side(brazilian,1).
sea_side(pery,1).
sea_side(argentina,1).
sea_side(chili,1).
sea_side(paraguay,2).
sea_side(islandia,1).
sea_side(uk,1).
sea_side(france,1).
sea_side(italia,1).
sea_side(spain,1).
sea_side(irlande,1).
sea_side(avstriya,2).
sea_side(romania,2).
sea_side(denmark,1).
sea_side(norway,1).
sea_side(sweden,1).
sea_side(finland,1).
sea_side(belarusian,2).
sea_side(russia,1).
sea_side(russia,1).
sea_side(china,1).
sea_side(india,1).
sea_side(saudi_arabia,1).
sea_side(japan,1).
sea_side(avstraliya,1).
sea_side(egipt,1).
sea_side(botswana,2).

continent_side(canada,1).
continent_side(usa,2).
continent_side(mexico,2).
continent_side(cuba,2).
continent_side(dominicana,2).
continent_side(brazilian,3).
continent_side(pery,4).
continent_side(argentina,2).
continent_side(chili,4).
continent_side(paraguay,2).
continent_side(islandia,5).
continent_side(uk,4).
continent_side(france,2).
continent_side(italia,2).
continent_side(spain,6).
continent_side(irlande,4).
continent_side(avstriya,2).
continent_side(romania,2).
continent_side(denmark,4).
continent_side(norway,1).
continent_side(sweden,1).
continent_side(finland,1).
continent_side(belarusian,3).
continent_side(russia,3).
continent_side(russia,1).
continent_side(china,7).
continent_side(india,2).
continent_side(saudi_arabia,4).
continent_side(japan,3).
continent_side(avstraliya,1).
continent_side(egipt,1).
continent_side(botswana,2).

population(canada,5).
population(usa,2).
population(mexico,3).
population(cuba,8).
population(dominicana,8).
population(brazilian,2).
population(pery,6).
population(argentina,5).
population(chili,7).
population(paraguay,10).
population(islandia,13).
population(uk,4).
population(france,4).
population(italia,4).
population(spain,5).
population(irlande,12).
population(avstriya,10).
population(romania,7).
population(denmark,11).
population(norway,11).
population(sweden,8).
population(finland,11).
population(belarusian,9).
population(russia,3).
population(china,1).
population(india,1).
population(saudi_arabia,6).
population(japan,3).
population(avstraliya,6).
population(egipt,3).
population(botswana,13).

form_of_government(canada,4).
form_of_government(usa,1).
form_of_government(mexico,1).
form_of_government(cuba,6).
form_of_government(dominicana,1).
form_of_government(brazilian,1).
form_of_government(pery,1).
form_of_government(argentina,1).
form_of_government(chili,1).
form_of_government(paraguay,1).
form_of_government(islandia,3).
form_of_government(uk,4).
form_of_government(france,2).
form_of_government(italia,3).
form_of_government(spain,5).
form_of_government(irlande,3).
form_of_government(avstriya,3).
form_of_government(romania,2).
form_of_government(denmark,4).
form_of_government(norway,4).
form_of_government(sweden,4).
form_of_government(finland,4).
form_of_government(belarusian,1).
form_of_government(russia,2).
form_of_government(china,6).
form_of_government(india,3).
form_of_government(saudi_arabia,7).
form_of_government(japan,4).
form_of_government(avstraliya,4).
form_of_government(egipt,2).
form_of_government(botswana,1).

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
	   continent(X,X1), sea_side(X,X2), continent_side(X,X3), population(X,X4), form_of_government(X,X5), write(X).
