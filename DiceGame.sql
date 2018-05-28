--continue rolling the "dice" until you get a 1; score = the sum of all rows until you roll a 1

DECLARE @counter smallint;
declare @score int;
declare @diceroll int;
SET @counter = 0;
SET @score = 0;
set @diceroll = 5

while @diceroll <> 1
   BEGIN
      set @diceroll = FLOOR(RAND()*6+1);
	  SET @score = @score + @diceroll;
	  SET @counter = @counter + 1;
   END

print 'Score: ' + cast(@score as nvarchar(12));
print 'Rolls: ' + cast(@counter as nvarchar(12));
GO