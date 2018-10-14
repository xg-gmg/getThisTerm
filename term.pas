unit term;

interface
 function whichTerm(year:string;month:string):string;
implementation
uses System.SysUtils;
function whichTerm(year:string;month:string):string;
  begin
    if (StrToInt(month)>=8) then
    begin
      Result:=year+'-'+IntToStr(StrtoInt(year)+1)+'-'+IntToStr(1) ;
    end
    else
    begin
      Result:=IntToStr(StrtoInt(year)-1)+'-'+year+'-'+IntToStr(2);
    end;
  end;

end.
