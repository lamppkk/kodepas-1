unit kpprint;
interface 
    uses crt, sysutils;
    procedure kpprint_error(input: ansistring);
    procedure kpprint_complete(input: ansistring);
    procedure kpprint_wan(input: ansistring);
    procedure kpprint_cmdout(input :Ansistring);
    procedure kpprint_process(input : Ansistring);
implementation 
    procedure print_s(input : ansistring);
        var i: longint;
        begin
            for i:=1 to 7 do write(input[i]);
        end;
    procedure print_e(input : ansistring);
        var i: longint;
        begin
            for i:=8 to length(input) do write(input[i]);
            writeln;
        end;
    procedure kpprint_error(input: ansistring);
        begin
            textcolor(red);
            print_s(input);
            textcolor(white);
            print_e(input);
        end;
    procedure kpprint_complete(input: ansistring);
        begin
            {textcolor(green);
            writeln(input);
            textcolor(white);}
            textcolor(green);
            print_s(input);
            textcolor(white);
            print_e(input);
        end;
    procedure kpprint_wan(input: ansistring);
        begin
            textcolor(yellow);
            print_s(input);
            textcolor(white);
            print_e(input);
        end;
    procedure kpprint_cmdout(input : AnsiString);
        begin
            writeln(input);
        end;
    procedure kpprint_process(input: ansistring);
    begin
        textcolor(blue);
        writeln(input);
        textcolor(white);
    end;
end.