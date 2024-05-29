//Программа, проводящая арифметические операции по компьютерным алгоритмам.
unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    StaticText1: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    procedure Button11Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure ClickBut(Sender: TObject);
    procedure ClickZnak(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StaticText11Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  x1,x2,znak:string;
  x, y, cel1,drob1,znak1, cel2, drob2, znak2, chislo1, chislo2, chislo3, plus, umnosh, A, delit, inv, dob, rez: string;
  por1, por2, por3, porsl, porum,i:integer;
  iu,ru, kol:integer;
  au,fu, tek:string;
  im,am, perepoln:integer;
  mn1, mn2:string;
  b,zn,pr1,pr2, bilo, zakhod1, zakhod2, nul1, nul2, CF, ZF, PF, AF, SF, OV :boolean;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button13Click(Sender: TObject);
  var str:String;
begin
    str:=Edit1.Text;
    if (str<>'') and (not zn) then
    Delete(str,Length(str),1);
    if (str<>'') and zn then
    Delete(str,1,1);
    Edit1.Text:=str;
end;

procedure TForm1.Button11Click(Sender: TObject);
  var str:String;
begin
  str:=Edit1.Text;
  Edit1.Text:='-'+str;
  zn:=True;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  Edit1.Clear;
  Form1.Width:=230;
  Form1.Height:=280;
          Edit8.Visible:=False;
  StaticText1.Visible:=False;
  StaticText2.Visible:=False;
  StaticText3.Visible:=False;
  StaticText4.Visible:=False;
  StaticText5.Visible:=False;
  StaticText6.Visible:=False;
  StaticText7.Visible:=False;
  StaticText8.Visible:=False;
  StaticText9.Visible:=False;
  StaticText10.Visible:=False;
       StaticText11.Visible:=False;
  Edit2.Visible:=False;
  Edit3.Visible:=False;
  Edit4.Visible:=False;
  Edit5.Visible:=False;
  Edit6.Visible:=False;
  Edit7.Visible:=False;
  Edit8.Visible:=False;
  Edit9.Visible:=False;
    Edit10.Visible:=False;
  Edit11.Visible:=False;
  Edit13.Visible:=False;
  Edit14.Visible:=False;
  Edit15.Visible:=False;
      Label2.Visible:=False;
  Label3.Visible:=False;
  Label4.Visible:=False;
  Label5.Visible:=False;
  Label6.Visible:=False;
  Label7.Visible:=False;
  Label8.Visible:=False;
     Label9.Visible:=False;
  Label10.Visible:=False;
  Label11.Visible:=False;
  Label12.Visible:=False;
  Label13.Visible:=False;
  Label14.Visible:=False;
  Label15.Visible:=False;
    Label16.Visible:=False;
      Label18.Visible:=False;
  Label19.Visible:=False;
  Label21.Visible:=False;
  Label22.Visible:=False;
    Label23.Visible:=False;
end;

procedure TForm1.ClickBut(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+(Sender as TButton).Caption;

end;
procedure TForm1.ClickZnak(Sender: TObject);
begin
   zn:=False;
   x1:=Edit1.Text;
   Edit1.Clear;
   znak:=(Sender as TButton).Caption;
end;
procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
     Form1.Width:=230;
     Form1.Height:=280;
     zn:=False;
     nul1:=False;
     nul2:=False;
     StaticText1.Visible:=False;
     StaticText2.Visible:=False;
     StaticText3.Visible:=False;
     StaticText4.Visible:=False;
     StaticText5.Visible:=False;
     StaticText6.Visible:=False;
     StaticText7.Visible:=False;
     StaticText8.Visible:=False;
     StaticText9.Visible:=False;
     StaticText10.Visible:=False;
     StaticText11.Visible:=False;
    Edit2.Visible:=False;
  Edit3.Visible:=False;
  Edit4.Visible:=False;
  Edit5.Visible:=False;
  Edit6.Visible:=False;
  Edit7.Visible:=False;
  Edit8.Visible:=False;
  Edit9.Visible:=False;
  Edit10.Visible:=False;
  Edit11.Visible:=False;

  Edit13.Visible:=False;
  Edit14.Visible:=False;
  Edit15.Visible:=False;
    Label2.Visible:=False;
  Label3.Visible:=False;
  Label4.Visible:=False;
  Label5.Visible:=False;
  Label6.Visible:=False;
  Label7.Visible:=False;
  Label8.Visible:=False;
     Label9.Visible:=False;
  Label10.Visible:=False;
  Label11.Visible:=False;
  Label12.Visible:=False;
  Label13.Visible:=False;
  Label14.Visible:=False;
  Label15.Visible:=False;
    Label16.Visible:=False;
  Label18.Visible:=False;
  Label19.Visible:=False;

  Label21.Visible:=False;
  Label22.Visible:=False;
    Label23.Visible:=False;
end;

procedure TForm1.StaticText11Click(Sender: TObject);
begin

end;




procedure TForm1.Button15Click(Sender: TObject);
begin
  StaticText1.Visible:=True;
  StaticText2.Visible:=True;
  StaticText3.Visible:=True;
  StaticText4.Visible:=True;
  StaticText5.Visible:=True;
  StaticText6.Visible:=True;
  StaticText7.Visible:=True;
  StaticText8.Visible:=True;
  StaticText9.Visible:=True;
  StaticText10.Visible:=True;
   StaticText11.Visible:=True;
    Edit2.Visible:=True;
  Edit3.Visible:=True;
  Edit4.Visible:=True;
  Edit5.Visible:=True;
  Edit6.Visible:=True;
  Edit7.Visible:=True;
  Edit9.Visible:=True;
  Edit10.Visible:=True;
  Edit11.Visible:=True;

  Edit13.Visible:=True;
  Edit14.Visible:=True;
  Edit15.Visible:=True;
  Label2.Visible:=True;
  Label3.Visible:=True;
  Label4.Visible:=True;
  Label5.Visible:=True;
  Label6.Visible:=True;
  Label7.Visible:=True;
  Label8.Visible:=True;
  Label9.Visible:=True;
  Label18.Visible:=True;
  Label19.Visible:=True;

  Label21.Visible:=True;
  Label22.Visible:=True;
  Label23.Visible:=True;
  Label10.Visible:=True;
  Label11.Visible:=True;
  Label12.Visible:=True;
  Label13.Visible:=True;
  Label14.Visible:=True;
  Label15.Visible:=True;
    Label16.Visible:=True;
  Form1.Width:=850;
  Form1.Height:=950;
  x2:=Edit1.Text;
  nul1:=False;
  nul2:=False;
  Edit15.Text:='0';
  Edit11.Text:='0';
  Edit1.Text:=x1+znak+x2;

  if znak='+' then StaticText1.Caption:='       Операция сложения';
  if znak='-' then StaticText1.Caption:='       Операция вычитания';
  if znak='*' then StaticText1.Caption:='       Операция умножения';
  if znak='/' then StaticText1.Caption:='       Операция деления';

  statictext2.Caption:=' = '+'Перевод числа '+x1;
  statictext3.Caption:=' = '+'Перевод числа '+x2;
  statictext7.Caption:=' = '+x1+znak+x2;
  if (x1='0') or (x1='-0') then begin nul1:=True; Edit11.Text:='1'; end;
  if (x2='0') or (x2='-0') then begin nul2:=True; Edit11.Text:='1'; end;
  //Выполняем перевод по IEEE
  Perevod(x1, cel1, drob1, znak1);
  por1:=poryad(cel1,drob1);
  if (pos('1',cel1)=0) and (pos('1',drob1)=0) then begin nul1:=True; Edit15.Text:='1'; end;
  //формирование мантиссы для 1 числа
  chislo1:=mantissa(cel1, drob1, por1);
  //Выполняем перевод по IEEE
  Perevod(x2, cel2, drob2, znak2);
  por2:=poryad(cel2,drob2);
  if (pos('1',cel2)=0) and (pos('1',drob2)=0) then begin nul2:=True; Edit15.Text:='1'; end;
  Edit8.Text:=cel2;
  bilo:=False;
  CF:=False; ZF:=False; PF:=False; AF:=False; SF:=False; OV:=False;
  //++ - сложение одинаковых знаков, +- - сложение разных знаков
  if (znak1='0') and (znak2='1') and (znak='-') and not bilo then begin znak:='+'; bilo:=True; end;
  if (znak1='0') and (znak2='1') and (znak='+') and not bilo then begin znak:='-'; bilo:=True; end;
  if (znak1='1') and (znak2='0') and (znak='-') and not bilo then begin znak:='+'; bilo:=True; end;
  if (znak1='1') and (znak2='0') and (znak='+') and not bilo then begin znak:='-'; bilo:=True; end;


  //формирование мантиссы для 2 числа
  chislo2:=mantissa(cel2, drob2, por2);
  Edit2.Text:='     '+znak1+'        |     '+PORYADOK(por1)+'      |       '+chislo1;
  Edit3.Text:='     '+znak2+'        |     '+PORYADOK(por2)+'      |       '+chislo2;
  case znak of
       '+':
	begin
	chislo3:='';
        zakhod1:=False;
        zakhod2:=False;
	//приводим к общему порядку
        StaticText6.Caption:='Шаг 1. Приводим к общему порядку.';
        inc(i);
	if por1>por2 then begin
	ru:=por1-por2;
	ru:=abs(ru);
	por3:=por1;
        if nul2 then chislo2:='0'+chislo2 else chislo2:='1'+chislo2;
        zakhod2:=True;
	for iu:=1 to ru-1 do chislo2:='0'+chislo2;
	ru:=abs(length(chislo1)-length(chislo2));
	for iu:=1 to ru do chislo1:=chislo1+'0';
	end else begin
	ru:=por2-por1;
	ru:=abs(ru);
	por3:=por2;
        if (por1<>por2) then begin if nul1 then chislo1:='0'+chislo1 else chislo1:='1'+chislo1; zakhod1:=True; end;
	for iu:=1 to ru-1 do chislo1:='0'+chislo1;
	ru:=abs(length(chislo1)-length(chislo2));
	for iu:=1 to ru do chislo2:=chislo2+'0';
	end;
        chislo1:=copy(chislo1,1,24);
        chislo2:=copy(chislo2,1,24);
        Edit4.Text:='     '+znak1+'        |     '+PORYADOK(por3)+'      |       '+chislo1;
        Edit5.Text:='     '+znak2+'        |     '+PORYADOK(por3)+'      |       '+chislo2;
          statictext4.Caption:='Приведение к общему порядку числа '+x1;
           statictext5.Caption:='Приведение к общему порядку числа '+x2;
        StaticText9.Caption:='Шаг 2. Складываем две мантиссы.';
	//складываем
	fu:='0';
	for iu:=1 to length(chislo1) do chislo3:=chislo3+'0';
	for iu:=length(chislo1) downto 1 do
	begin
	au:=fu+chislo1[iu]+chislo2[iu];
	case au of
	'000':begin  chislo3[iu]:='0'; fu:='0' end;
	'001','010','100':begin chislo3[iu]:='1'; fu:='0'; end;
	'111':begin chislo3[iu]:='1'; fu:='1'; end;
	else begin chislo3[iu]:='0'; fu:='1'; end;
	end;
	end;
        if fu='1' then begin Edit10.Text:='1';
         Edit13.Text:='1'; end else begin Edit10.Text:='0';
         Edit13.Text:='0'; end;
	if fu='1' then if zakhod1 xor zakhod2 then begin chislo3:='0'+chislo3; por3:=por3+1; end;
        if fu='1' then if zakhod1 and zakhod2 then chislo3:=''+chislo3;
        if fu='1' then if not zakhod1 and not zakhod2 then begin chislo3:='1'+chislo3; por3:=por3+1; end;
        if fu='0' then if not zakhod1 and not zakhod2 then begin chislo3:='0'+chislo3; por3:=por3+1; end;
	delete(chislo3,24,length(chislo3)-23);
        Edit6.Text:='     '+znak2+'        |     '+PORYADOK(por3)+'      |       '+chislo3;
        Edit9.Text:=CC16(znak1+PORYADOK(por3)+chislo3);
         Edit7.Text:=FloatToStr(Perevodv10(znak1,por3,chislo3,''));
         if znak2='1' then Edit14.Text:='1' else Edit14.Text:='0';
         end;


       '*':begin
       if (znak1='1') xor (znak2='1') then znak1:='1' else znak1:='0';
	chislo3:='0';
	//определяем порядок
	StaticText6.Caption:='Шаг 1. Вычисляем общий порядок:';
        por1:=por1+1;
        por2:=por2+1;
        if nul1 then chislo1:='0'+chislo1 else chislo1:='1'+chislo1;
        if nul2 then chislo2:='0'+chislo2 else chislo2:='1'+chislo2;
        statictext4.Caption:='Сдвинем порядок на 1 у числа '+x1;
        statictext5.Caption:='Сдвинем порядок на 1 у числа '+x2;
        Edit4.Text:='     '+znak1+'        |     '+PORYADOK(por1)+'      |       '+chislo1;
        Edit5.Text:='     '+znak2+'        |     '+PORYADOK(por2)+'      |       '+chislo2;
        por3:=por1+por2;
        Edit8.Visible:=True;
        Edit8.Text:=PORYADOK(por3);
	if (pos('1',chislo1)<>0) then while chislo1[length(chislo1)]<>'1' do delete(chislo1,length(chislo1),1);
	if (pos('1',chislo2)<>0) then while chislo2[length(chislo2)]<>'1' do delete(chislo2,length(chislo2),1);
        i:=length(chislo1)+length(chislo2);
        if length(chislo1)>length(chislo2) then begin mn1:=chislo1; mn2:=chislo2;  end
	else begin mn1:=chislo2; mn2:=chislo1;  end;

        StaticText9.Caption:='Шаг 2. Перемножаем мантиссы.';
	for im:=length(mn2) downto 1 do
	begin
	chislo1:='';
	if mn2[im]<>'0' then begin
	sloshenie(mn1,chislo3,chislo3,length(mn1),length(chislo3),am);
	mn1:=mn1+'0';
	end else mn1:=mn1+'0';
	end;

        while length(chislo3)<i do chislo3:='0'+chislo3;

 	if chislo3[1]='1' then begin delete(chislo3,1,1);
        por3:=por3-1;
        end else if pos('1',chislo3)<>0 then begin
        por3:=por3-pos('1',chislo3);
        delete(chislo3,1,pos('1',chislo3));
        end;

	while length(chislo3)<23 do chislo3:=chislo3+'0';
	delete(chislo3,24,length(chislo3)-23);
         Edit10.Text:='--';
         Edit13.Text:='--';
         Edit6.Text:='     '+znak1+'        |     '+PORYADOK(por3)+'      |       '+chislo3;
         Edit9.Text:=CC16(znak1+PORYADOK(por3)+chislo3);
         if znak1='1' then Edit14.Text:='1' else Edit14.Text:='0';
        if nul1 or nul2 then Edit7.Text:=FloatToStr(Perevodv10(znak1,por3,chislo3,'vichet')) else Edit7.Text:=FloatToStr(Perevodv10(znak1,por3,chislo3,''));
       end;


        '-':
	begin

        b:=sravnenie(chislo1,chislo2,por1,por2);
        pr1:=False;  pr2:=False;
	//приводим к общему порядку
        StaticText6.Caption:='Шаг 1. Приводим к общему порядку.';
	if por1>por2 then begin
	ru:=por1-por2;
	ru:=abs(ru);
	por3:=por1;
        if nul2 then chislo2:='0'+chislo2 else chislo2:='1'+chislo2;
         pr2:=True;
	for iu:=1 to ru-1 do chislo2:='0'+chislo2;
	ru:=abs(length(chislo1)-length(chislo2));
	for iu:=1 to ru do chislo1:=chislo1+'0';
	end else begin
	ru:=por2-por1;
	ru:=abs(ru);
	por3:=por2;
        if (por1<>por2) then begin
        if nul1 then chislo1:='0'+chislo1 else chislo1:='1'+chislo1;
        pr1:=True; end;
	for iu:=1 to ru-1 do chislo1:='0'+chislo1;
	ru:=abs(length(chislo1)-length(chislo2));
	for iu:=1 to ru do chislo2:=chislo2+'0';
	end;
        chislo1:=copy(chislo1,1,24);
        chislo2:=copy(chislo2,1,24);
        statictext4.Caption:='Приведение к общему порядку числа '+x1;
        statictext5.Caption:='Приведение к общему порядку числа '+x2;
        Edit4.Text:='     '+znak1+'        |     '+PORYADOK(por3)+'      |       '+chislo1;
        Edit5.Text:='     '+znak2+'        |     '+PORYADOK(por3)+'      |       '+chislo2;
        StaticText9.Caption:='Шаг 2. Проводим операцию вычитания.';
	//вычитаем
        if pr1 then begin
        chislo1:='1'+chislo1;
        chislo2:='0'+chislo2;
        por3:=por3+1;
        end;
        if pr2 then begin
        chislo1:='0'+chislo1;
        chislo2:='1'+chislo2;
        por3:=por3+1;
        end;
        if (not pr2) and (not pr1) then begin
        if nul1 then chislo1:='0'+chislo1 else chislo1:='1'+chislo1;
        if nul2 then chislo2:='0'+chislo2 else chislo2:='1'+chislo2;
        por3:=por3+1;
        end;
        if not b then begin
        chislo3:=chislo1;
        chislo1:=chislo2;
        chislo2:=chislo3;
        ru:=por1;
        por1:=por2;
        por2:=ru;
        end;
        chislo3:='';
        perepoln := 0;
        for iu := length(chislo1) downto 1 do
        begin
        if (StrToInt(chislo1[iu]) - perepoln) >= StrToInt(chislo2[iu]) then
        begin
        chislo3 := IntToStr(StrToInt(chislo1[iu]) - perepoln - StrToInt(chislo2[iu])) + chislo3;
        perepoln := 0;
        end
        else
        begin
        chislo3 := IntToStr(StrToInt(chislo1[iu]) + 2 - perepoln - StrToInt(chislo2[iu])) + chislo3;
        perepoln := 1;
        end;
        end;
	delete(chislo3,24,length(chislo3)-23);
        if (perepoln=1) then begin
        Edit10.Text:='1';
         Edit13.Text:='1';
         end else begin
         Edit10.Text:='0';
         Edit13.Text:='0';
         end;
        if (not b) then znak1:='1';
        if (not b) and (znak2='1') then znak1:='0';
        Edit6.Text:='     '+znak1+'        |     '+PORYADOK(por3)+'      |       '+chislo3;
        Edit9.Text:=CC16(znak1+PORYADOK(por3)+chislo3);
        Edit7.Text:=FloatToStr(Perevodv10(znak1,por3,chislo3,'vichet'));
         if znak1='1' then Edit14.Text:='1' else Edit14.Text:='0';
       end;



  '/': //деление производится прямым кодом
  begin
  Edit10.Text:='--';
  Edit13.Text:='--';
  if not  nul2 then begin
  chislo3:='0';
  if (znak1='1') xor (znak2='1') then znak1:='1' else znak1:='0';
  //определяем порядок
  	StaticText6.Caption:='Шаг 1. Вычисляем общий порядок:';;
  	por3:=por1-por2;
        Edit8.Visible:=True;
        Edit8.Text:=PORYADOK(por3);
        if nul1 then chislo1:='0'+chislo1 else chislo1:='1'+chislo1;
          if nul2 then chislo2:='0'+chislo2 else chislo2:='1'+chislo2;
          statictext4.Caption:='Сдвинем порядок на 1 у числа '+x1;
          statictext5.Caption:='Сдвинем порядок на 1 у числа '+x2;
          por1:=por1+1;
          por2:=por2+1;
          Edit4.Text:='     '+znak1+'        |     '+PORYADOK(por1)+'      |       '+chislo1;
          Edit5.Text:='     '+znak2+'        |     '+PORYADOK(por2)+'      |       '+chislo2;
  	  if (pos('1',chislo1)<>0) then while chislo1[length(chislo1)]<>'1' do delete(chislo1,length(chislo1),1);
  	  if (pos('1',chislo2)<>0) then while chislo2[length(chislo2)]<>'1' do delete(chislo2,length(chislo2),1);
          StaticText9.Caption:='Шаг 2. Производим операцию деление.';
         A:='0.'+chislo1;//остаток, который в начале равен делимому
         delit:='0.'+chislo2;//делитель
         chislo3:='';//частное
         while Length(A)<>length(delit) do
         begin
         if Length(A)>length(delit) then delit:=delit+'0';
         if Length(A)<length(delit) then A:=A+'0';
         end;
         inv:=''; //инвертируем делитель
         for i:=1 to length(delit) do
         begin
         if delit[i]='0' then inv:=inv+'1';
         if delit[i]='.' then inv:=inv+'.';
         if delit[i]='1' then inv:=inv+'0';
         end;
         dob:='1';
         while length(dob)<>length(inv)-2 do dob:='0'+dob;
         dob:='0.'+dob;

         plusbezpor(inv,dob,inv);//получаем инвертированный делитель
         //начинаем процесс деления
         rez:='0';
         iu:=0;
         b:=True;
         while b do
         begin
         //if iu=0 then Edit1.Text:=' '+A+' '+inv+' '+delit;
         if rez='1' then plusbezpor(A,delit,A);
         if rez='0' then begin   plusbezpor(A,inv,A);  end;
         rez:=copy(A,1,pos('.',A)-1);
         //Edit1.Text:=Edit1.Text+' '+A+' '+inv;
         if (rez='0') or (rez='10') then  chislo3:=chislo3+'1' else chislo3:=chislo3+'0';
         if rez='10' then begin rez:='0'; delete(A,1,1); end;
         A:=A+'0';

         delete(A,1,2);
        A:=copy(A,1,1)+'.'+copy(A,2,length(A)); //битовый сдвиг влево

         if (pos('1',A)=0) or (length(chislo3)=23) then b:=False;
         iu:=iu+1;
         end;

        if pos('1',chislo3)=1 then delete(chislo3,1,1) else begin
        por3:=por3-pos('1',chislo3)+1;
        delete(chislo3,1,pos('1',chislo3));
        end;

         while length(chislo3)<>23 do chislo3:=chislo3+'0';
        Edit6.Text:='     '+znak1+'        |     '+PORYADOK(por3)+'      |       '+chislo3;
        Edit9.Text:=CC16(znak1+PORYADOK(por3)+chislo3);
        if nul1 then Edit7.Text:=FloatToStr(Perevodv10(znak1,por3,chislo3,'vichet')) else Edit7.Text:=FloatToStr(Perevodv10(znak1,por3,chislo3,''));
         if znak1='1' then Edit14.Text:='1' else Edit14.Text:='0';
  end else begin
  Form1.Width:=230;
     Form1.Height:=280;
     Edit1.Text:='На нуль делить нельзя!';
     end;
    end;
end;
  end;



end.

