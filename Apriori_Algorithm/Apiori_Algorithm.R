
R version 4.4.1 (2024-06-14) -- "Race for Your Life"
Copyright (C) 2024 The R Foundation for Statistical Computing
Platform: aarch64-apple-darwin20

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[R.app GUI 1.80 (8416) aarch64-apple-darwin20]

[Workspace restored from /Users/gowthampentela/.RData]
[History restored from /Users/gowthampentela/.Rapp.history]

> install.packages("arulesViz")
--- Please select a CRAN mirror for use in this session ---
trying URL 'https://mirror.las.iastate.edu/CRAN/bin/macosx/big-sur-arm64/contrib/4.4/arulesViz_1.5.3.tgz'
Content type 'application/x-gzip' length 1877966 bytes (1.8 MB)
==================================================
downloaded 1.8 MB


The downloaded binary packages are in
	/var/folders/fx/hvhx8pk96t1bljjpwccyz0g00000gn/T//RtmpIqYFtH/downloaded_packages
> install.packages("arules")
trying URL 'https://mirror.las.iastate.edu/CRAN/bin/macosx/big-sur-arm64/contrib/4.4/arules_1.7-8.tgz'
Content type 'application/x-gzip' length 2710593 bytes (2.6 MB)
==================================================
downloaded 2.6 MB


The downloaded binary packages are in
	/var/folders/fx/hvhx8pk96t1bljjpwccyz0g00000gn/T//RtmpIqYFtH/downloaded_packages
> library(arules)
Loading required package: Matrix

Attaching package: ‘arules’

The following objects are masked from ‘package:base’:

    abbreviate, write

> library(arulesViz)
> data("Groceries")
> summary("Groceries")
   Length     Class      Mode 
        1 character character 
> # Check the number of transactions and items
> nrow(Groceries)  # Number of transactions
[1] 9835
> ncol(Groceries)  # Number of items
[1] 169
> 
> summary(Groceries)
transactions as itemMatrix in sparse format with
 9835 rows (elements/itemsets/transactions) and
 169 columns (items) and a density of 0.02609146 

most frequent items:
      whole milk other vegetables       rolls/buns             soda           yogurt          (Other) 
            2513             1903             1809             1715             1372            34055 

element (itemset/transaction) length distribution:
sizes
   1    2    3    4    5    6    7    8    9   10   11   12   13   14   15   16   17   18   19   20   21   22   23   24   26   27   28   29   32 
2159 1643 1299 1005  855  645  545  438  350  246  182  117   78   77   55   46   29   14   14    9   11    4    6    1    1    1    1    3    1 

   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  1.000   2.000   3.000   4.409   6.000  32.000 

includes extended item information - examples:
       labels  level2           level1
1 frankfurter sausage meat and sausage
2     sausage sausage meat and sausage
3  liver loaf sausage meat and sausage
> rules <- apriori(Groceries, parameter = list(supp = 0.001, conf = 0.8))
Apriori

Parameter specification:
 confidence minval smax arem  aval originalSupport maxtime support minlen maxlen target  ext
        0.8    0.1    1 none FALSE            TRUE       5   0.001      1     10  rules TRUE

Algorithmic control:
 filter tree heap memopt load sort verbose
    0.1 TRUE TRUE  FALSE TRUE    2    TRUE

Absolute minimum support count: 9 

set item appearances ...[0 item(s)] done [0.00s].
set transactions ...[169 item(s), 9835 transaction(s)] done [0.00s].
sorting and recoding items ... [157 item(s)] done [0.00s].
creating transaction tree ... done [0.00s].
checking subsets of size 1 2 3 4 5 6 done [0.01s].
writing ... [410 rule(s)] done [0.00s].
creating S4 object  ... done [0.00s].
> 
> inspect(head(rules))
    lhs                                  rhs            support     confidence coverage    lift      count
[1] {liquor, red/blush wine}          => {bottled beer} 0.001931876 0.9047619  0.002135231 11.235269 19   
[2] {curd, cereals}                   => {whole milk}   0.001016777 0.9090909  0.001118454  3.557863 10   
[3] {yogurt, cereals}                 => {whole milk}   0.001728521 0.8095238  0.002135231  3.168192 17   
[4] {butter, jam}                     => {whole milk}   0.001016777 0.8333333  0.001220132  3.261374 10   
[5] {soups, bottled beer}             => {whole milk}   0.001118454 0.9166667  0.001220132  3.587512 11   
[6] {napkins, house keeping products} => {whole milk}   0.001321810 0.8125000  0.001626843  3.179840 13   
> plot(rules, method = "graph", control = list(type = "items"))
Warning: Unknown control parameters: type
Available control parameters (with default values):
layout	 =  stress
circular	 =  FALSE
ggraphdots	 =  NULL
edges	 =  <environment>
nodes	 =  <environment>
nodetext	 =  <environment>
colors	 =  c("#EE0000FF", "#EEEEEEFF")
engine	 =  ggplot2
max	 =  100
verbose	 =  FALSE
Warning message:
Too many rules supplied. Only plotting the best 100 using ‘lift’ (change control parameter max if needed). 
> 
> rules_conf <- sort(rules, by = "confidence", decreasing = TRUE)
> inspect(head(rules_conf, 10))
     lhs                                                        rhs                support     confidence coverage    lift     count
[1]  {rice, sugar}                                           => {whole milk}       0.001220132 1          0.001220132 3.913649 12   
[2]  {canned fish, hygiene articles}                         => {whole milk}       0.001118454 1          0.001118454 3.913649 11   
[3]  {root vegetables, butter, rice}                         => {whole milk}       0.001016777 1          0.001016777 3.913649 10   
[4]  {root vegetables, whipped/sour cream, flour}            => {whole milk}       0.001728521 1          0.001728521 3.913649 17   
[5]  {butter, soft cheese, domestic eggs}                    => {whole milk}       0.001016777 1          0.001016777 3.913649 10   
[6]  {citrus fruit, root vegetables, soft cheese}            => {other vegetables} 0.001016777 1          0.001016777 5.168156 10   
[7]  {pip fruit, butter, hygiene articles}                   => {whole milk}       0.001016777 1          0.001016777 3.913649 10   
[8]  {root vegetables, whipped/sour cream, hygiene articles} => {whole milk}       0.001016777 1          0.001016777 3.913649 10   
[9]  {pip fruit, root vegetables, hygiene articles}          => {whole milk}       0.001016777 1          0.001016777 3.913649 10   
[10] {cream cheese , domestic eggs, sugar}                   => {whole milk}       0.001118454 1          0.001118454 3.913649 11   
> plot(rules_conf[1:10], method = "scatterplot", measure = c("support", "confidence"))
To reduce overplotting, jitter is added! Use jitter = 0 to prevent jitter.
> # Scatter plot without jitter
> plot(rules_conf[1:10], method = "scatterplot", measure = c("support", "confidence"), jitter = 0)
> 
> 