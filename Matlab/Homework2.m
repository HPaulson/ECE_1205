load fordstock.mat
load gmstock.mat

time=1:length(gm);
plot(time,gm,time,ford);
legend('gm','ford');

% 1. How many days did the GM stock close above $45 or below $40?

days = sum(gm>45 | gm<40);
fprintf("GM stock closed above $45 or below $40 on %d days.\n", days)

% 2. How many days did the GM stock close between $40 and $45, inclusive?

days = sum(gm>=40 & gm<=45);
fprintf("GM stock closed between $40 and $45 on %d days.\n", days)

% 3. How many days did the Ford stock close higher than the GM’s?

days = sum(ford>gm);
fprintf("Ford stock closed higher than GM stock on %d days.\n", days)

% 4. On what day did Ford fall below GM for the first time and what was the stock price?

days = find(ford < gm);
fellDay = days(1,1);
price = ford(fellDay);
fprintf("Ford stock first fell below GM stock on trading day %d at closing price $%.2f.\n", fellDay, price)

% 5. On a certain day the GM stock closed higher than Ford and never fell back. Which day was it?

fordHigher = find(gm < ford);
day = fordHigher(end) + 1;
price = gm(day);
fprintf("GM stock closed higher than Ford stock on trading day %d and never fell back. It's price was $%.2f.\n", day, price);
