import delimited "data/raw/birdstrikes/birdstrikes-small.csv", clear

keep id aircraft airline cost
* winsorize small tender values
replace cost = 400 if cost < 400
* drop tenders with multiple winners
drop if strlen(aircraft) > 2
drop if missing(bird_size, feet_above_ground)
save "data/derived/birdstrikes-small.dta", replace
