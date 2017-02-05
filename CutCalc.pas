Program CutCalculator;

Var
n, number: integer;
x, y, perim: real;

Const
p25: array of integer = (54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 55, 56, 57, 58, 59, 59, 60, 61, 62, 63, 63, 64, 65, 65, 66, 65, 67, 67, 68, 68, 69, 69, 70, 70, 70, 71, 71, 72, 72, 72, 73, 74, 74, 74, 75, 75, 76, 76, 76, 77, 77, 78, 78, 79, 79, 80, 80, 81, 81, 82, 82, 83, 83, 84, 84, 85, 85, 86, 86, 87, 88, 88, 88, 89, 89, 90, 90, 90, 91, 91, 91, 92, 92, 92, 92, 92, 93, 93, 93);
p50: array of integer = (54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 56, 59, 61, 64, 66, 69, 71, 73, 75, 77, 79, 81, 83, 85, 86, 88, 90, 91, 93, 94, 96, 97, 98, 100, 101, 103, 104, 105, 106, 107, 109, 110, 111, 113, 114, 115, 116, 117, 118, 120, 121, 122, 123, 124, 126, 127, 128, 129, 131, 132, 133, 134, 135, 136, 138, 139, 140, 141, 142, 144, 145, 146, 148, 149, 150, 152, 153, 154, 155, 156, 157, 158, 160, 161, 162, 163, 164, 165, 166, 167, 168, 168, 169, 170, 170, 171, 172, 172, 173);
p100: array of integer = (54, 54, 54, 54, 54, 54, 54, 57, 62, 66, 71, 75, 79, 83, 86, 90, 93, 96, 99, 102, 105, 107, 110, 112, 115, 117, 119, 121, 123, 125, 127, 129, 131, 132, 134, 136, 138, 139, 141, 142, 144, 146, 147, 149, 150, 152, 154, 155, 157, 159, 160, 162, 163, 165, 167, 169, 171, 173, 175, 176, 178, 180, 182, 184, 186, 188, 190, 192, 194, 196, 198, 200, 202, 204, 206, 208, 210, 212, 214, 216, 218, 220, 222, 224, 225, 227, 228, 230, 231, 233, 234, 235, 236, 237, 238, 238, 239, 239, 239, 240);
p150: array of integer = (54, 54, 54, 54, 54, 54, 54, 59, 64, 68, 73, 77, 82, 85, 89, 93, 96, 100, 103, 106, 109, 112, 114, 117, 119, 122, 124, 126, 128, 131, 133, 134, 136, 138, 140, 142, 144, 146, 147, 149, 151, 152, 154, 156, 157, 159, 161, 162, 164, 166, 167, 169, 171, 173, 174, 176, 178, 180, 181, 183, 185, 187, 189, 191, 193, 195, 197, 199, 201, 203, 204, 206, 209, 211, 212, 215, 217, 218, 220, 223, 224, 226, 228, 230, 232, 233, 235, 237, 238, 240, 241, 243, 244, 245, 246, 247, 248, 249, 249, 250);
p200: array of integer = (54, 54, 54, 54, 54, 54, 55, 61, 65, 70, 75, 80, 84, 88, 92, 96, 99, 103, 106, 110, 113, 116, 119, 122, 124, 127, 130, 132, 134, 137, 139, 141, 144, 146, 148, 149, 152, 154, 155, 157, 159, 161, 163, 164, 167, 168, 170, 172, 174, 175, 177, 179, 181, 183, 184, 186, 188, 190, 192, 194, 196, 197, 200, 201, 203, 205, 207, 209, 211, 213, 215, 217, 219, 220, 223, 225, 226, 229, 231, 232, 234, 236, 238, 240, 241, 243, 245, 247, 248, 250, 251, 252, 254, 255, 257, 258, 259, 259, 260, 261);
p250: array of integer = (54, 54, 54, 54, 54, 54, 60, 66, 72, 77, 82, 86, 91, 95, 99, 103, 107, 110, 113, 117, 120, 122, 125, 128, 131, 133, 135, 138, 140, 142, 144, 146, 148, 150, 152, 154, 156, 158, 160, 162, 163, 165, 167, 169, 171, 173, 175, 177, 179, 181, 183, 185, 187, 189, 192, 194, 196, 199, 201, 203, 206, 208, 211, 213, 216, 218, 221, 223, 226, 229, 231, 234, 236, 239, 241, 244, 247, 249, 252, 254, 257, 259, 261, 264, 266, 267, 270, 271, 273, 275, 276, 278, 279, 280, 281, 281, 282, 282, 282, 283);
p300: array of integer = (54, 54, 54, 54, 54, 57, 63, 69, 75, 81, 86, 91, 96, 100, 104, 108, 112, 116, 119, 123, 126, 129, 132, 135, 138, 140, 142, 145, 147, 149, 152, 154, 156, 158, 161, 163, 165, 167, 169, 171, 173, 175, 177, 179, 181, 184, 186, 188, 190, 193, 195, 197, 200, 202, 205, 208, 210, 212, 215, 218, 220, 224, 226, 229, 232, 235, 238, 241, 244, 246, 250, 252, 255, 258, 261, 262, 267, 269, 272, 275, 277, 280, 282, 285, 287);
p350: array of integer = (54, 54, 54, 54, 54, 59, 66, 72, 78, 84, 90, 95, 100, 105, 110, 114, 118, 122, 126, 129, 133, 136, 139, 142, 145, 147, 150, 153, 155, 158, 160, 162, 165, 167, 169, 172, 174, 176, 178, 181, 183, 185, 187, 189, 192, 194, 197, 199, 202, 204, 206, 209, 212, 215, 217, 220, 223, 225, 228, 231, 234, 237, 240, 243, 246, 248, 252, 254, 258, 260, 264);
p400: array of integer = (54, 54, 54, 54, 54, 62, 69, 75, 82, 88, 93, 99, 104, 108, 113, 118, 122, 126, 130, 134, 138, 141, 144, 147, 150, 153, 156, 159, 162, 164, 167, 169, 172, 174, 176, 178, 181, 183, 186, 188, 190, 192, 195, 197, 199, 201, 204, 206, 209, 211, 213, 216, 218, 221, 224, 226, 229, 231, 234, 237, 240, 243, 245, 248);
p450: array of integer = (54, 54, 54, 54, 56, 63, 70, 76, 83, 89, 94, 100, 105, 110, 115, 120, 124, 128, 132, 136, 140, 144, 147, 150, 153, 156, 160, 162, 165, 168, 170, 173, 176, 178, 180, 183, 185, 188, 190, 192, 194, 197, 199, 201, 204, 206, 209, 211, 214, 216, 219, 222, 225, 227, 230, 232, 235, 237, 240, 243, 246, 248, 251, 254);
p500: array of integer = (54, 54, 54, 54, 57, 64, 71, 77, 84, 90, 96, 101, 106, 112, 117, 121, 126, 130, 134, 139, 142, 146, 150, 153, 156, 160, 163, 166, 169, 172, 174, 177, 180, 182, 184, 187, 189, 192, 194, 196, 199, 201, 204, 206, 209, 211, 214, 216, 219, 222, 224, 227);
p600: array of integer = (54, 54, 54, 54, 59, 66, 74, 80, 86, 93, 99, 104, 110, 115, 120, 125, 129, 134, 138, 142, 146, 150, 154, 157, 161, 164, 167, 170, 174, 177, 180, 183, 185, 188, 191, 194, 196, 199, 201, 204, 206, 209, 211, 214, 217, 219, 222, 224);
p700: array of integer = (54, 54, 54, 56, 65, 74, 82, 90, 97, 104, 111, 117, 124, 130, 136, 142, 148, 155, 161, 167, 173, 178, 184, 190, 195, 200, 205, 209, 213);
p800: array of integer = (54, 54, 54, 60, 70, 79, 88, 98, 104, 111, 118, 125, 132, 138, 145, 151, 158, 164, 170, 176, 182, 188, 194, 200);
p900: array of integer = (54, 54, 54, 64, 75, 85, 94, 102, 110, 118, 125, 132, 139, 146, 152, 159, 165, 172, 178, 184);
p1000: array of integer = (54, 54, 58, 70, 82, 92, 102, 110, 119, 127, 135, 142);
p1200: array of integer = (54, 54, 64, 77, 88, 98, 108, 117, 126, 134, 143, 151);
p1400: array of integer = (54, 55, 73, 87, 99, 111, 121, 132, 143, 154, 164, 174);
p1600: array of integer = (54, 61, 84, 106, 126, 146, 164);
p1800: array of integer = (54, 66, 90, 113, 138);
p2000: array of integer = (54, 76, 95, 122);

Procedure perimSquare;
begin
write('������� ������ (������): ');
readln(x);
write('������� ������ (������): ');
readln(y);
perim:= int((x+y)*2);
writeln('�������� ����� �������� ����� ', perim, ' ��');
end;

Procedure perimRound;
begin
write('������� �������: ');
readln(x);
perim:= int(x*3.1415);
writeln('�������� ����� �������� ����� ', perim, ' ��');
end;

Procedure cutCount;
begin
write('������� ����� ���������� �������� � �������: ');
readln(number);
writeln('---------------------------------');

var i: integer;

if (perim<=25)
then
begin
if (number > Length(p25)) then
begin
writeln('��� ������ �� ��������� ������� � ��������� �����������.'); 
writeln('��������� � ����� ������� (�������� �� ������ ����).');
end;
for i:= 1 to Length(p25) do
if (i = number) then
writeln('��������� ������� ����� ', p25[i-1]+30, ' ����.');
end;

if ((perim>25) and (perim <=50))
then
begin
if (number > Length(p50)) then
begin
writeln('��� ������ �� ��������� ������� � ��������� �����������.'); 
writeln('��������� � ����� ������� (�������� �� ������ ����).');
end;
for i:= 1 to Length(p50) do
if (i = number)
then
writeln('��������� ������� ����� ', p50[i-1]+30, ' ����.');
end;

if ((perim>50) and (perim <=100))
then
begin
if (number > Length(p100)) then
begin
writeln('��� ������ �� ��������� ������� � ��������� �����������.'); 
writeln('��������� � ����� ������� (�������� �� ������ ����).');
end;
for i:= 1 to Length(p100) do
if (i = number)
then
writeln('��������� ������� ����� ', p100[i-1]+30, ' ����.');
end;

if ((perim>100) and (perim <=150))
then
begin
if (number > Length(p150)) then
begin
writeln('��� ������ �� ��������� ������� � ��������� �����������.'); 
writeln('��������� � ����� ������� (�������� �� ������ ����).');
end;
for i:= 1 to Length(p150) do
if (i = number)
then
writeln('��������� ������� ����� ', p150[i-1]+30, ' ����.');
end;

if ((perim>150) and (perim <=200))
then
begin
if (number > Length(p200)) then
begin
writeln('��� ������ �� ��������� ������� � ��������� �����������.'); 
writeln('��������� � ����� ������� (�������� �� ������ ����).');
end;
for i:= 1 to Length(p200) do
if (i = number)
then
writeln('��������� ������� ����� ', p200[i-1]+30, ' ����.');
end;

if ((perim>200) and (perim <=250))
then
begin
if (number > Length(p250)) then
begin
writeln('��� ������ �� ��������� ������� � ��������� �����������.'); 
writeln('��������� � ����� ������� (�������� �� ������ ����).');
end;
for i:= 1 to Length(p250) do
if (i = number)
then
writeln('��������� ������� ����� ', p250[i-1]+30, ' ����.');
end;

if ((perim>250) and (perim <=300))
then
begin
if (number > Length(p300)) then
begin
writeln('��� ������ �� ��������� ������� � ��������� �����������.'); 
writeln('��������� � ����� ������� (�������� �� ������ ����).');
end;
for i:= 1 to Length(p300) do
if (i = number)
then
writeln('��������� ������� ����� ', p300[i-1]+30, ' ����.');
end;

if ((perim>300) and (perim <=350))
then
begin
if (number > Length(p350)) then
begin
writeln('��� ������ �� ��������� ������� � ��������� �����������.'); 
writeln('��������� � ����� ������� (�������� �� ������ ����).');
end;
for i:= 1 to Length(p350) do
if (i = number)
then
writeln('��������� ������� ����� ', p350[i-1]+30, ' ����.');
end;

if ((perim>350) and (perim <=400))
then
begin
if (number > Length(p400)) then
begin
writeln('��� ������ �� ��������� ������� � ��������� �����������.'); 
writeln('��������� � ����� ������� (�������� �� ������ ����).');
end;
for i:= 1 to Length(p400) do
if (i = number)
then
writeln('��������� ������� ����� ', p400[i-1]+30, ' ����.');
end;

if ((perim>400) and (perim <=450))
then
begin
if (number > Length(p450)) then
begin
writeln('��� ������ �� ��������� ������� � ��������� �����������.'); 
writeln('��������� � ����� ������� (�������� �� ������ ����).');
end;
for i:= 1 to Length(p450) do
if (i = number)
then
writeln('��������� ������� ����� ', p450[i-1]+30, ' ����.');
end;

if ((perim>450) and (perim <=500))
then
begin
if (number > Length(p500)) then
begin
writeln('��� ������ �� ��������� ������� � ��������� �����������.'); 
writeln('��������� � ����� ������� (�������� �� ������ ����).');
end;
for i:= 1 to Length(p500) do
if (i = number)
then
writeln('��������� ������� ����� ', p500[i-1]+30, ' ����.');
end;

if ((perim>500) and (perim <=600))
then
begin
if (number > Length(p600)) then
begin
writeln('��� ������ �� ��������� ������� � ��������� �����������.'); 
writeln('��������� � ����� ������� (�������� �� ������ ����).');
end;
for i:= 1 to Length(p600) do
if (i = number)
then
writeln('��������� ������� ����� ', p600[i-1]+30, ' ����.');
end;

if ((perim>600) and (perim <=700))
then
begin
if (number > Length(p700)) then
begin
writeln('��� ������ �� ��������� ������� � ��������� �����������.'); 
writeln('��������� � ����� ������� (�������� �� ������ ����).');
end;
for i:= 1 to Length(p700) do
if (i = number)
then
writeln('��������� ������� ����� ', p700[i-1]+30, ' ����.');
end;

if ((perim>700) and (perim <=800))
then
begin
if (number > Length(p800)) then
begin
writeln('��� ������ �� ��������� ������� � ��������� �����������.'); 
writeln('��������� � ����� ������� (�������� �� ������ ����).');
end;
for i:= 1 to Length(p800) do
if (i = number)
then
writeln('��������� ������� ����� ', p800[i-1]+30, ' ����.');
end;

if ((perim>800) and (perim <=900))
then
begin
if (number > Length(p900)) then
begin
writeln('��� ������ �� ��������� ������� � ��������� �����������.'); 
writeln('��������� � ����� ������� (�������� �� ������ ����).');
end;
for i:= 1 to Length(p900) do
if (i = number)
then
writeln('��������� ������� ����� ', p900[i-1]+30, ' ����.');
end;

if ((perim>900) and (perim <=1000))
then
begin
if (number > Length(p1000)) then
begin
writeln('��� ������ �� ��������� ������� � ��������� �����������.'); 
writeln('��������� � ����� ������� (�������� �� ������ ����).');
end;
for i:= 1 to Length(p1000) do
if (i = number)
then
writeln('��������� ������� ����� ', p1000[i-1]+30, ' ����.');
end;

if ((perim>1000) and (perim <=1200))
then
begin
if (number > Length(p1200)) then
begin
writeln('��� ������ �� ��������� ������� � ��������� �����������.'); 
writeln('��������� � ����� ������� (�������� �� ������ ����).');
end;
for i:= 1 to Length(p1200) do
if (i = number)
then
writeln('��������� ������� ����� ', p1200[i-1]+30, ' ����.');
end;

if ((perim>1200) and (perim <=1400))
then
begin
if (number > Length(p1400)) then
begin
writeln('��� ������ �� ��������� ������� � ��������� �����������.'); 
writeln('��������� � ����� ������� (�������� �� ������ ����).');
end;
for i:= 1 to Length(p1400) do
if (i = number)
then
writeln('��������� ������� ����� ', p1400[i-1]+30, ' ����.');
end;

if ((perim>1400) and (perim <=1600))
then
begin
if (number > Length(p1600)) then
begin
writeln('��� ������ �� ��������� ������� � ��������� �����������.'); 
writeln('��������� � ����� ������� (�������� �� ������ ����).');
end;
for i:= 1 to Length(p1600) do
if (i = number)
then
writeln('��������� ������� ����� ', p1600[i-1]+30, ' ����.');
end;

if ((perim>1600) and (perim <=1800))
then
begin
if (number > Length(p1800)) then
begin
writeln('��� ������ �� ��������� ������� � ��������� �����������.'); 
writeln('��������� � ����� ������� (�������� �� ������ ����).');
end;
for i:= 1 to Length(p1800) do
if (i = number)
then
writeln('��������� ������� ����� ', p1800[i-1]+30, ' ����.');
end;

if ((perim>1800) and (perim <=2000))
then
begin
if (number > Length(p2000)) then
begin
writeln('��� ������ �� ��������� ������� � ��������� �����������.'); 
writeln('��������� � ����� ������� (�������� �� ������ ����).');
end;
for i:= 1 to Length(p2000) do
if (i = number)
then
writeln('��������� ������� ����� ', p2000[i-1]+30, ' ����.');
end;
end;

Begin
writeln('                   -----------------------------------------');
writeln('                  |          Cut Calculator v1.2            |');
writeln('                  |           ��� "�����-�-����"            |');
writeln('                  |         �����: ��������� ������         |');
writeln('                   -----------------------------------------');
writeln('                             �������� ��� �������:');
writeln('                               1 - �������������');
writeln('                               2 - ��������');
writeln;
write('������� ��� �����: ');
readln(n);
while ((n <> 1) and (n <> 2)) do
begin
write('�� ������ ������ "1" ��� "2". ������� ��� �����: ');
readln(n);
end;
Case n of
1:
begin
writeln('������� ������������� �������.');
writeln('������� ��������:');
perimSquare;
cutCount;
end;

2:
begin
writeln('������� �������� �������.');
writeln('������� ��������:');
perimRound;
cutCount;
end; 
end;

writeln('---------------------------------');
writeln('������� "����" ��� ������ �� ���������.');
readln;
End. 
