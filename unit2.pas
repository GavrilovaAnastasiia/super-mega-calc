unit Unit2;

{$mode ObjFPC}{$H+}

interface
const
  con = 48;
  bit = 32;

function PRDIV(a: integer): string;
function PORYADOK(pr: integer): string;
function PRMOD(q, nom, bit, b, pr: integer): string;
procedure Perevod(stroka: string; var s,s2,chislo:string);
function poryad(cel,drob:string):integer;
function mantissa(cel, drob:string; por:integer):string;
function Perevodv10(znak:string; por:integer; mantissa, oper:string):real;
procedure sloshenie(chislo1, chislo2:string; var chislo3:string; por1, por2:integer; var por3: integer);
function sravnenie(chislo1, chislo2:string; por1, por2:integer):boolean;//если 1е больше 2го, то тру
function sravn(chislo1,chislo2:string):boolean;
procedure plusbezpor(chislo1, chislo2:string; var chislo3:string);
function CC16(s:string):string;
implementation
uses
Classes, SysUtils, Unit1;
var indikator:boolean;

function PRDIV(a: integer): string;
var
  s: string;
begin
  //целая часть перевод
  s := '';
  if a = 0 then s := '0';
  while a > 0 do
  begin
    if a mod 2 = 0 then
    begin
      s := '0' + s;
      a := a div 2;
    end;
    if a mod 2 = 1 then
    begin
      s := '1' + s;
      a := a div 2;
    end;
  end;
  PRDIV := s;
end;

function PORYADOK(pr: integer): string;
var
  s: string;
begin
  pr := pr + 127;
  s := '';
  while pr > 0 do
  begin
    if pr mod 2 = 0 then
    begin
      s := '0' + s;
      pr := pr div 2;
    end;
    if pr mod 2 = 1 then
    begin
      s := '1' + s;
      pr := pr div 2;
    end;
  end;
  while length(s)<8 do s:='0'+s;
  PORYADOK := s;
end;

function PRMOD(q, nom, bit, b, pr: integer): string;
var
  i, d, a: integer;
  s: string;
begin
	d := 1; s := '';
	for i := 1 to nom do
		d := d * 10;
	a := 0;
	for i := 1 to bit - 1 - pr - q do
  begin
    a := ((b * 2) div d);
    if a = 0 then s := s + '0'
    else s := s + '1';
    b := (b * 2) mod d;
  end;
  PRMOD := s;
end;
function poryad(cel,drob:string):integer;
         var por:integer;
begin
por:=0;
if (cel='0') and (pos('1',drob)<>0) then
   while drob[1]<>'1' do
	begin
	     delete(drob,1,1);
	     por:=por-1;
	end
else
    por:=length(cel);
poryad:=por-1;
end;

function mantissa(cel, drob:string; por:integer):string;
var i:integer;
begin
if por<=0 then begin
   por:=-por;
   delete(drob,1,por);
   for i:=1 to por do drob:=drob+'0';
   mantissa:=drob;
end else begin
    mantissa:=cel+drob;
    delete(mantissa,1,1);
    end;
end;

function Perevodv10(znak:string; por:integer; mantissa, oper:string):real;
var s,stepen:real;
begin
s:=0;
stepen:=1;
  if (oper<>'nol') then begin
  if oper<>'vichet' then mantissa:='1'+mantissa else mantissa:='0'+mantissa;
  if por>=0 then for i:=1 to por do
          stepen:=stepen*2 else
          for i:=1 to -por do
          stepen:=stepen/2;
  while mantissa<>'' do
       begin
         if mantissa[1]='1' then s:=s+stepen;
         delete(mantissa,1,1);
         stepen:=(stepen/2);
       end;
  end;
  if znak='1' then s:=s*(-1);
   Perevodv10:=s;
end;

procedure Perevod(stroka: string; var s,s2,chislo:string);
var
  celoe, drob, i, l, nom, pr, q, o: integer;
  s1: string;
begin
  celoe:=0;
  drob:=0;
  i:=0;
  l:=0;
  nom:=0;
  pr:=0;
  q:=0;
  o:=0;
  //определяем знак и удаляем его, записывая знак в число
  if (stroka[1] = '-') then begin
    chislo := '1';
    Delete(stroka, 1, 1);
  end
  else chislo := '0';
  //Ищем запятую/точку и копируем целую часть и дробную часть
  for i := 1 to length(stroka) do
    if (stroka[i] = ',') then begin l := i; break; end;

  if l<>0 then s1 := copy(stroka, 1, l - 1) else s1:=stroka;//целая часть, записали в s1
  pr := length(s1)-1;
  val(s1, celoe, o);//celoe-вещественное число
  s1 := '';
  if l<>0 then s1 := copy(stroka, l + 1, length(stroka)) else s1:='0';//дробная, записали в s1
  val(s1, drob, o);
  nom := length(s1);//кол-во цифр в дробной части

   if (celoe=0) and (drob=0) then indikator:=True;
  s := ''; s1 := ''; s2 := '';
    //целая часть перевод
  s := PRDIV(celoe);

    //определяю длину целой части
    pr:=length(s)-1;

	q := 8;
    //перевод дробной
  s2 := PRMOD(q, nom, bit, drob, pr);
  pr:=0;
end;

procedure sloshenie(chislo1, chislo2:string; var chislo3:string; por1, por2:integer; var por3: integer);
	var i,r:integer;
	a:string;
	begin
	chislo3:='';
	//приводим к общему порядку
	if por1>por2 then begin
	r:=por1-por2;
	r:=abs(r);
	por3:=por1;
	for i:=1 to r do chislo2:='0'+chislo2;
	r:=abs(length(chislo1)-length(chislo2));
	for i:=1 to r do chislo1:=chislo1+'0';
	end else begin
	r:=por2-por1;
	r:=abs(r);
	por3:=por2;
	for i:=1 to r do chislo1:='0'+chislo1;
	r:=abs(length(chislo1)-length(chislo2));
	for i:=1 to r do chislo2:=chislo2+'0';
	end;
	//складываем
	a:='0';
	for i:=1 to length(chislo1) do chislo3:=chislo3+'0';
	for i:=length(chislo1) downto 1 do
	begin
	a:=a+chislo1[i]+chislo2[i];
	case a of
	'000':begin  chislo3[i]:='0'; a:='0' end;
	'001','010','100':begin chislo3[i]:='1'; a:='0'; end;
	'111':begin chislo3[i]:='1'; a:='1'; end;
	'101','011','110': begin chislo3[i]:='0'; a:='1'; end;
	end;
	end;
	if a='1' then chislo3:='1'+chislo3;
	end;
function CC16(s:string):string;
var a,b:string;
k:integer;
begin
b:='';
k:=0;
while s<>'' do begin
k:=k+1;
a:=copy(s,1,4);
case a of
'0000':b:=b+'0';
'0001':b:=b+'1';
'0010':b:=b+'2';
'0011':b:=b+'3';
'0100':b:=b+'4';
'0101':b:=b+'5';
'0110':b:=b+'6';
'0111':b:=b+'7';
'1000':b:=b+'8';
'1001':b:=b+'9';
'1010':b:=b+'A';
'1011':b:=b+'B';
'1100':b:=b+'C';
'1101':b:=b+'D';
'1110':b:=b+'E';
'1111':b:=b+'F';
end;
delete(s,1,4);
if k=4 then b:=b+' ';
end;
CC16:='  '+b;
end;



function sravnenie(chislo1, chislo2:string; por1, por2:integer):boolean;
var i,r:integer;
begin
   //приводим к общему порядку
chislo2:='1'+chislo2;
chislo1:='1'+chislo1;
	if por1>por2 then begin
	r:=por1-por2;
	r:=abs(r);
	for i:=1 to r do chislo2:='0'+chislo2;
	r:=abs(length(chislo1)-length(chislo2));
	for i:=1 to r do chislo1:=chislo1+'0';
	end else begin
	r:=por2-por1;
	r:=abs(r);
	for i:=1 to r do chislo1:='0'+chislo1;
	r:=abs(length(chislo1)-length(chislo2));
	for i:=1 to r do chislo2:=chislo2+'0';
	end;
        for i:=1 to length(chislo1) do
            if chislo1[i]<>chislo2[i] then if chislo1[i]='1' then begin sravnenie:=True; break; end else begin sravnenie:=False; break; end;
end;

function sravn(chislo1,chislo2:string):boolean;
var i:integer;
begin
sravn:=True;
  for i:=1 to length(chislo1) do
  if chislo1[i]<>chislo2[i] then if chislo1[i]='1' then begin sravn:=True; break; end else begin sravn:=False; break; end;
end;

procedure plusbezpor(chislo1, chislo2:string; var chislo3:string);
	var i:integer;
	a:string;
	begin
	chislo3:='';
        delete(chislo1,pos('.',chislo1),1);
        delete(chislo2,pos('.',chislo2),1);
	a:='0';
	for i:=1 to length(chislo1) do chislo3:=chislo3+'0';
	for i:=length(chislo1) downto 1 do
	begin
	a:=a+chislo1[i]+chislo2[i];
	case a of
	'000':begin  chislo3[i]:='0'; a:='0' end;
	'001','010','100':begin chislo3[i]:='1'; a:='0'; end;
	'111':begin chislo3[i]:='1'; a:='1'; end;
	'101','011','110': begin chislo3[i]:='0'; a:='1'; end;
	end;
	end;
        chislo3:=copy(chislo3,1,1)+'.'+copy(chislo3,2,length(chislo3));
	if a='1' then chislo3:='1'+chislo3;

	end;
End.

