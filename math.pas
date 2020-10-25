program mathdemo;
uses Crt;
var
Opcao: string;

procedure Titulo();
begin
   ClrScr;
   writeln('------------------------------------------------');
   writeln('       Sistema automático de matematica');
   writeln('------------------------------------------------');
   writeln('');
end;

procedure Fatorial();
var
N, F: integer;
begin
   ClrScr;
   Titulo();
   write('Digite um número: ');
   readln (N);
   F := FuncFatorial(N);
   writeln ('O valor de ', N,'! é igual a ', F);
end;

procedure Matematica();
var
V: array[1..2] de integer;
Res: real;
Opcao: string;
begin
   Titulo();
   write('Digite o primeiro valor: ');
   readln (V[1]);
   write('Digite o segundo valor: ');
   readln (V[2]);
   ClrScr;
   Titulo();
   writeln('Para somar, digite 1');
   writeln('Para subtrair, digite 2');
   writeln('Para multiplicar, digite 3');
   writeln('Para dividir, digite 4');
   writeln('Para verificar a média, digite 5');
   writeln('Para encerrar o programa, digite 6');
   writeln('');
   write('Digite a opção desejada: ');
   readln(Opcao);
   case(Opcao);
   : '1';
   Res := V[1]+V[2];
   ClrScr;
   Titulo();
   writeln('A soma entre os valores é igual à ', Res);
   : '2';
   Res := V[1]-V[2];
   ClrScr;
   Titulo();
   writeln('A subtração entre os valores é igual à ', Res);
   : '3';
   Res := V[1]*V[2];
   ClrScr;
   Titulo();
   writeln('A multiplicação entre os valores é igual à ', Res);
   : '4';
   Res := V[1]/V[2];
   ClrScr;
   Titulo();
   writeln('A divisão entre os valores é igual à ', Res);
   : '5';
   Res := (V[1]+V[2])/2;
   ClrScr;
   Titulo();
   writeln('A média entre os valores é igual à ', Res);
   : '6';
   ClrScr;
   Titulo();
   writeln('Encerrando...');
   end;
end;

procedure ImparOuPar();
var
N: integer;
S: string;
begin
   Titulo();
   write ('Digite um número: ');
   readln(N);
   S := FuncParOuImpar(N);
   write ('O número ', N, ' é ', S);
end;

function FuncParOuImpar(V: integer): string;
begin
   if (Vmod2 = 0) then begin
   Result :=  'PAR';
   end else begin
   Result :=  'IMPAR';
   end;
end;

function FuncFatorial(V: integer):integer;
Var
C, R: integer;
begin
   R := 1;
   for C := 1 to V do begin
   R := R * C;
   end;
   Result :=  R;
end;

begin
   Titulo();
   writeln ('Para realizar calculos básicos de matemática, digite 1: ');
   writeln ('Para verificar se um número é par ou impar, digite 2: ');
   writeln ('Para verificar o fatorial de um número, digite 3: ');
   writeln ('');
   write ('Digite a opção desejada: ');
   readln(Opcao);
   case (Opcao);
   : '1';
   Matematica();
   : '2';
   ImparOuPar();
   : '3';
   Fatorial();
   end;
end.
