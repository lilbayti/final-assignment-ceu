import delimited "data/raw/birdstrikes/birdstrikes-small.csv", clear
destring damage, force replace
keep id aircraft flight_date airline state cost reported_date bird_size feet_above_ground
* winsorize small tender values
drop if strlen(bird_size) > 2
* drop tenders with multiple winners
display missing(.,2)
save "data/raw/birdstrikes/birdstrikes-small.csv", replace
