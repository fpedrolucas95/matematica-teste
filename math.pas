program Matematica;
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

procedure PrimeiroMenu();
begin
   writeln ('Para realizar calculos básicos de matemática, digite 1: ');
   writeln ('Para verificar se um número é par ou impar, digite 2: ');
   writeln ('');
end;

procedure Matematica();
var
V1, V2: integer;
Res: real;
Opcao: string;
begin
   Titulo();
   write('Digite o primeiro valor: ');
   readln (V1);
   write('Digite o segundo valor: ');
   readln (V2);
   writeln('');
   writeln('Para somar, digite 1');
   writeln('Para subtrair, digite 2');
   writeln('Para multiplicar, digite 3');
   writeln('Para dividir, digite 4');
   writeln('Para encerrar o programa, digite 5');
   writeln('');
   write('Digite a opção desejada: ');
   readln(Opcao);
   case(Opcao);
   : '1';
   Res := V1+V2;
   writeln('A soma entre os valores é igual à ', Res);
   : '2';
   Res := V1-V2;
   writeln('A subtração entre os valores é igual à ', Res);
   : '3';
   Res := V1*V2;
   writeln('A multiplicação entre os valores é igual à ', Res);
   : '4';
   Res := V1/V2;
   writeln('A divisão entre os valores é igual à ', Res);
   : '5';
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

begin
   Titulo();
   PrimeiroMenu();
   write ('Digite a opção desejada: ');
   readln(Opcao);
   case (Opcao);
   : '1';
   Matematica();
   : '2';
   ImparOuPar();
   end;
end.
