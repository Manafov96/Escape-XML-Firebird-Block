execute block(
  STR1000 varchar(250) =: STR1000
)
returns(
  STR1500 varchar(375)
)
as
begin
  STR1500='';
  if(STR1000 = '' or (STR1000 is null)) then
    exit;
  begin
    STR1500=replace(replace(replace(replace(replace(replace(replace(
            STR1000,'<','&lt'),'>','&gt'),'&','&amp'),'''','&apos'),ascii_char(9),'&#09'),
            '"','&quot'), ascii_char(13) || ascii_char(10),'&#10');
    suspend;
  end
end
