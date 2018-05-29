DECLARE @counter bigint;
declare @score int;
declare @diceroll int;
declare @gamesplayed bigint;
declare @GoalScore int;

--ENTER YOUR GOAL SCORE BELOW--
SET @GoalScore = 500
----

SET @counter = 0;
SET @score = 0;
set @diceroll = 5
set @gamesplayed = 0

while @score < @GoalScore
   BEGIN
      set @diceroll = FLOOR(RAND()*6+1);
	  SET @score = @score + @diceroll;
	  SET @counter = @counter + 1;
	  if @diceroll = 1
		BEGIN
		set @score = 0;
		set @gamesplayed = @gamesplayed + 1;
		END
	END

print 'Score: ' + cast(@score as nvarchar(12));
print 'Rolls: ' + cast(@counter as nvarchar(12));
print 'Games Played: ' + cast(@gamesplayed as nvarchar(12));
GO