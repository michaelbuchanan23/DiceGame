declare @Dice_Sides int;
declare @rolls int;
declare @dice int;
declare @score int;

--Set number of dice sides below
set @Dice_Sides = 100;
--

set @rolls = 0;
set @dice = 5;
set @score = 0;

while @dice <> 1
	BEGIN
	set @dice = floor((rand()*(@Dice_Sides-1))+1);
	set @score += @dice;
	set @rolls += @rolls + 1;
	END

print 'Score: ' + (cast(@score as nvarchar(20)));
print 'Rolls: ' + (cast(@rolls as nvarchar(20)));