## NAIC data Explore
 Contact: Peggy Smith, WSB; Ty Leverty, WSB
 Note: Po-Kang Hsiao, 03/13/2025

Questions: 
- quarterly data available? 
- 2020's codebook is a bit wired (layout is not informative)
- What is inside NAIC_cleaned
- Line definitions 12.0 12.2. Are there codebook for this? 
- What is consideration?


This dataset is year x company: 
	- Pro: universal company level financial data
		- seems a good fit for supply side research like market structure
	- Con: no specific product characteristics, price and quantity 
		- might be hard for demand side research, e.g. BLPish
		- might need some state provided data? since price filling is to the states
	- usually connect with:
		- AM Best rating (demotech?): insurer financial strength、rating、group history
		- Product level data (e.g. Morningstar variable annuity product in Koijen and Yogo 2022)
		- State regulation changes, State filling data

Overview of the dataset (take Life as an example): 
- universal data
- annual statement on financial status and filings: company X year
- not necessary per line data
- footnote and write in are like other assets, can ignore them now
- Important files: 
	- Demography:
		- 000: Company Demograhpics: COCODE, type, GROUPCODE, domicile, state, name...
		- 004: Historical, seems like a bigger set of 000, contain closure and merge
		- 167: Schedule Y: organization relationships
	- Core Financial Status:
		- 005: Assets, company X line X year (006: write-in assets (other assets))
		- 007: Liability, company X line X year (inside means within their company)
		- 009: Summary of operations: line changes a bit
		- 011: Cash Flow:
	- Product Line Operations:
		- 012: Summary: what does each line do: individual, group, annuity, accident and health? 
	- Reserves, liability and claims
		- from 029: increase in reserves
		- 050: Aggr. reserves 
		- 057 & 059 (Exhibit 8): claims
	- Cost and Expense:
		- 042 (EXH. 1 - PART 1): PREMIUMS & ANNUITY CONS
		- 043 (EXH. 1 - PART 2 - DIVIDENDS & COUPONS APPLIED, REIN. COMM. & EXP. ALLW. AND COMM. INCUR.)
		- 044 (EXHIBIT 2 - GENERAL EXPENSES)
		- 047 (EXHIBIT 3 - TAXES, LICENSES AND FEES)
		- 048 (EXHIBIT 4 - DIVIDENDS OR REFUNDS)
		- 163 Schedule T: considerations?
	- Investment: 
		- 037: Summary of investment income 
		- possibly schedule D
	- Specialiazed Supplements
		- ACA, Long-term care, reinsurance, Medicare, worker's comp



For instance, in 2019 L&H: 
- 762 companies in 
- 43434 product lines

What I want for Production, per line x company x year(quarter):

	- Output:
		- Price x quantity = premium?
		- Do we have price and quantity separately? maybe need to get them from states?
		- Direct Premium written, earned, considerations (operation? Exhibit 1?)
		- by lines
	- Input/ Cost: 
		- labor, management, office operation (Exhibit 2?)
		- commission, reinsurance, ... (Exhibit 1 Part2?)
	- Risk Control
		- total reserves
		- Capital: Assets (005 Assets?)
		- Liability & Reserves
	- Firm Controls
		- compnay type, group, domicile, product mix, year... 