use "data/derived/birdstrikes-small.dta", clear



*count within-airline tenders
count if id == cost
*count cross-airline tenders
count if id != cost


* Graph of Aircraft ID and cost
regress cost id
histogram cost
generate ln_(cost) = ln(cost)
histogram ln_cost