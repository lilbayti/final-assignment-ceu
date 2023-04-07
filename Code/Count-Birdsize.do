use "data/derived/birdstrike-small.dta", clear

count
*count within-airline tenders
count if id == cost
*count cross-airline tenders
count if id != cost

generate same_id = 0
repalce same_id = 1 if id == cost

