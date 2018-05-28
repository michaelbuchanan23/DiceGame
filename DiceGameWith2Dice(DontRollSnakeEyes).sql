--Game is roll the two dice until you get snake eyes (meaning both dice roll a 1);
--Your score is the sum of all of your rolls up to and including your snake eyes roll (meaning your score of 2 on the snake eyes roll counts)

declare @dice1 int;
declare @dice2 int;
declare @rolls int;
declare @score int;

set @dice1 = 5;
set @dice2 = 5;
set @rolls = 1;
set @score = 0;

while @dice1 <> 1 and @dice2 <> 1
	BEGIN
	set @dice1 = floor(rand()*6+1);
	set @dice2 = floor(rand()*6+1);
	set @score += @dice1 + @dice2;
	set @rolls += @rolls + 1;
	END

print 'Score: '
print @score;
print 'Rolls: '
print @rolls;
