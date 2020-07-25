---
title: "Codebook"
output:
  pdf_document:
    toc: yes
    toc_depth: 4
    latex_engine: xelatex
    keep_md: true
  html_document:
    toc: yes
    toc_depth: 4
    toc_float: yes
    code_folding: hide
    self_contained: yes
    keep_md: true
  word_document:
    toc: yes
    toc_depth: '4'
    keep_md: true
    self_contained: yes
---

Here, we're just setting a few options.


```r
knitr::opts_chunk$set(
  warning = TRUE, # show warnings during codebook generation
  message = TRUE, # show messages during codebook generation
  error = TRUE, # do not interrupt codebook generation in case of errors,
                # usually better for debugging
  echo = TRUE  # show R code
)
ggplot2::theme_set(ggplot2::theme_bw())
```

Now, we're preparing our data for the codebook.


```r
library(codebook)
codebook_data <- bfi
# to import an SPSS file from the same folder uncomment and edit the line below
# codebook_data <- rio::import("mydata.sav")
# for Stata
# codebook_data <- rio::import("mydata.dta")
# for CSV
# codebook_data <- rio::import("mydata.csv")

# omit the following lines, if your missing values are already properly labelled
codebook_data <- detect_missing(codebook_data,
    only_labelled = TRUE, # only labelled values are autodetected as
                                   # missing
    negative_values_are_missing = FALSE, # negative values are missing values
    ninety_nine_problems = TRUE,   # 99/999 are missing values, if they
                                   # are more than 5 MAD from the median
    )

# If you are not using formr, the codebook package needs to guess which items
# form a scale. The following line finds item aggregates with names like this:
# scale = scale_1 + scale_2R + scale_3R
# identifying these aggregates allows the codebook function to
# automatically compute reliabilities.
# However, it will not reverse items automatically.
codebook_data <- detect_scales(codebook_data)
```

```
## 4 BFIK_open items connected to scale
```

```
## 4 BFIK_agree items connected to scale
```

```
## 4 BFIK_extra items connected to scale
```

```
## 3 BFIK_neuro items connected to scale
```

```
## 4 BFIK_consc items connected to scale
```


Create codebook


```r
codebook(codebook_data)
```

```
## Warning in doTryCatch(return(expr), name, parentenv, handler): Reliability CIs
## could not be computed for BFIK_consc
```

```
## Warning in doTryCatch(return(expr), name, parentenv, handler): Package "ufs"
## needed to compute reliabilites.
```

```
## Warning in value[[3L]](cond): Reliability could not be computed for BFIK_consc
```

```
## Warning in value[[3L]](cond): Package "ufs" needed to compute reliabilites.
```

```
## Warning in doTryCatch(return(expr), name, parentenv, handler): Reliability CIs
## could not be computed for BFIK_open
```

```
## Warning in doTryCatch(return(expr), name, parentenv, handler): Package "ufs"
## needed to compute reliabilites.
```

```
## Warning in value[[3L]](cond): Reliability could not be computed for BFIK_open
```

```
## Warning in value[[3L]](cond): Package "ufs" needed to compute reliabilites.
```

```
## Warning in doTryCatch(return(expr), name, parentenv, handler): Reliability CIs
## could not be computed for BFIK_neuro
```

```
## Warning in doTryCatch(return(expr), name, parentenv, handler): Package "ufs"
## needed to compute reliabilites.
```

```
## Warning in value[[3L]](cond): Reliability could not be computed for BFIK_neuro
```

```
## Warning in value[[3L]](cond): Package "ufs" needed to compute reliabilites.
```

```
## Warning in doTryCatch(return(expr), name, parentenv, handler): Reliability CIs
## could not be computed for BFIK_agree
```

```
## Warning in doTryCatch(return(expr), name, parentenv, handler): Package "ufs"
## needed to compute reliabilites.
```

```
## Warning in value[[3L]](cond): Reliability could not be computed for BFIK_agree
```

```
## Warning in value[[3L]](cond): Package "ufs" needed to compute reliabilites.
```

```
## Warning in doTryCatch(return(expr), name, parentenv, handler): Reliability CIs
## could not be computed for BFIK_extra
```

```
## Warning in doTryCatch(return(expr), name, parentenv, handler): Package "ufs"
## needed to compute reliabilites.
```

```
## Warning in value[[3L]](cond): Reliability could not be computed for BFIK_extra
```

```
## Warning in value[[3L]](cond): Package "ufs" needed to compute reliabilites.
```






### Metadata

#### Description
__Dataset name__: codebook_data

The dataset has N=28 rows and 29 columns.
0 rows have no missing values on any column.

<details>
<summary title="Expand this section to see some additional metadata in a structured format that is useful for search engines">Metadata for search engines</summary>






- __Date published__: 2020-07-24



\begin{table}

\centering
\begin{tabular}[t]{l}
\hline
x\\
\hline
session\\
\hline
created\\
\hline
modified\\
\hline
ended\\
\hline
expired\\
\hline
BFIK\_open\_2\\
\hline
BFIK\_agree\_4R\\
\hline
BFIK\_extra\_2\\
\hline
BFIK\_agree\_1R\\
\hline
BFIK\_open\_1\\
\hline
BFIK\_neuro\_2R\\
\hline
BFIK\_consc\_3\\
\hline
BFIK\_consc\_4\\
\hline
BFIK\_consc\_2R\\
\hline
BFIK\_agree\_3R\\
\hline
BFIK\_extra\_3R\\
\hline
BFIK\_neuro\_3\\
\hline
BFIK\_neuro\_4\\
\hline
BFIK\_agree\_2\\
\hline
BFIK\_consc\_1\\
\hline
BFIK\_open\_4\\
\hline
BFIK\_extra\_4\\
\hline
BFIK\_extra\_1R\\
\hline
BFIK\_open\_3\\
\hline
BFIK\_agree\\
\hline
BFIK\_open\\
\hline
BFIK\_consc\\
\hline
BFIK\_extra\\
\hline
BFIK\_neuro\\
\hline
\end{tabular}
\end{table}

</details>



### Survey overview

28 completed rows, 28 who entered any information, 0 only viewed the first page. There are 0 expired rows (people who did not finish filling out in the requested time frame). In total, there are 28 rows including unfinished and expired rows. 


There were 28 unique participants, of which 28 finished filling out at least one survey.

This survey was not repeated.






The first session started on 2016-07-08 03:54:16, the last session on 2016-11-02 16:19:50. 

```
## `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
```

![Starting date times](codebook_files/figure-latex/cb_codebook_data_overview__starting_time-1.pdf) 

People took on average 127.36 minutes (median 1.48) to answer the survey.

```
## Warning: Removed 4 rows containing non-finite values (stat_bin).
```

```
## Warning: Removed 2 rows containing missing values (geom_bar).
```

![Duration people took for answering the survey](codebook_files/figure-latex/cb_codebook_data_overview__duration-1.pdf) 


#Variables


### Scale: BFIK_agree {#BFIK_agree .tabset}
<a name="BFIK_agree_4R"></a><a name="BFIK_agree_1R"></a><a name="BFIK_agree_3R"></a><a name="BFIK_agree_2"></a>

#### Overview {#BFIK_agree_likert}

__Reliability__: Not computed.

__Missing__: 0.


![Likert plot of scale BFIK_agree items](codebook_files/figure-latex/cb_codebook_data_BFIK_agree_likert-1.pdf) 

![Distribution of scale BFIK_agree](codebook_files/figure-latex/cb_codebook_data_BFIK_agree_distribution-1.pdf) 

#### Reliability details {#BFIK_agree_reliability}



#### Summary statistics {#BFIK_agree_summary}

|name          |label                                                                     |type          |type_options |data_type      |value_labels                                                                                                                                |optional |item_order | n_missing| complete_rate|min |median |max |     mean|       sd| n_value_labels|hist     |
|:-------------|:-------------------------------------------------------------------------|:-------------|:------------|:--------------|:-------------------------------------------------------------------------------------------------------------------------------------------|:--------|:----------|---------:|-------------:|:---|:------|:---|--------:|--------:|--------------:|:--------|
|BFIK_agree_4R |__Ich kann mich schroff und abweisend anderen gegenüber verhalten.__      |rating_button |5            |haven_labelled |5. 1: Trifft überhaupt nicht zu,<br>4. 2,<br>3. 3,<br>2. 4,<br>1. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |5          |         0|             1|1   |3      |5   | 2.928571| 1.184110|              6|▂▇▁▃▁▅▁▂ |
|BFIK_agree_1R |__Ich neige dazu, andere zu kritisieren.__                                |rating_button |5            |haven_labelled |5. 1: Trifft überhaupt nicht zu,<br>4. 2,<br>3. 3,<br>2. 4,<br>1. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |7          |         0|             1|2   |3      |5   | 3.000000| 0.942809|              6|▇▁▅▁▁▆▁▁ |
|BFIK_agree_3R |__Ich kann mich kalt und distanziert verhalten.__                         |rating_button |5            |haven_labelled |5. 1: Trifft überhaupt nicht zu,<br>4. 2,<br>3. 3,<br>2. 4,<br>1. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |13         |         0|             1|1   |3      |5   | 3.035714| 1.290482|              6|▂▇▁▃▁▇▁▃ |
|BFIK_agree_2  |__Ich schenke anderen leicht Vertrauen, glaube an das Gute im Menschen.__ |rating_button |5            |haven_labelled |1. 1: Trifft überhaupt nicht zu,<br>2. 2,<br>3. 3,<br>4. 4,<br>5. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |17         |         0|             1|1   |4      |5   | 3.500000| 1.261980|              6|▂▅▁▅▁▇▁▆ |








### Scale: BFIK_open {#BFIK_open .tabset}
<a name="BFIK_open_2"></a><a name="BFIK_open_1"></a><a name="BFIK_open_4"></a><a name="BFIK_open_3"></a>

#### Overview {#BFIK_open_likert}

__Reliability__: Not computed.

__Missing__: 0.


![Likert plot of scale BFIK_open items](codebook_files/figure-latex/cb_codebook_data_BFIK_open_likert-16-1.pdf) 

![Distribution of scale BFIK_open](codebook_files/figure-latex/cb_codebook_data_BFIK_open_distribution-17-1.pdf) 

#### Reliability details {#BFIK_open_reliability}



#### Summary statistics {#BFIK_open_summary}

|name        |label                                                          |type          |type_options |data_type      |value_labels                                                                                                                                |optional |item_order | n_missing| complete_rate|min |median |max |     mean|        sd| n_value_labels|hist     |
|:-----------|:--------------------------------------------------------------|:-------------|:------------|:--------------|:-------------------------------------------------------------------------------------------------------------------------------------------|:--------|:----------|---------:|-------------:|:---|:------|:---|--------:|---------:|--------------:|:--------|
|BFIK_open_2 |__Ich bin tiefsinnig, denke gerne über Sachen nach.__          |rating_button |5            |haven_labelled |1. 1: Trifft überhaupt nicht zu,<br>2. 2,<br>3. 3,<br>4. 4,<br>5. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |4          |         0|             1|2   |4.0    |5   | 4.214286| 0.7382232|              6|▁▁▁▁▁▇▁▅ |
|BFIK_open_1 |__Ich bin vielseitig interessiert.__                           |rating_button |5            |haven_labelled |1. 1: Trifft überhaupt nicht zu,<br>2. 2,<br>3. 3,<br>4. 4,<br>5. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |8          |         0|             1|2   |5.0    |5   | 4.392857| 0.8317445|              6|▁▁▂▁▁▃▁▇ |
|BFIK_open_4 |__Ich schätze künstlerische und ästhetische Eindrücke.__       |rating_button |5            |haven_labelled |1. 1: Trifft überhaupt nicht zu,<br>2. 2,<br>3. 3,<br>4. 4,<br>5. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |19         |         0|             1|1   |4.0    |5   | 4.214286| 0.9567361|              6|▁▁▁▂▁▆▁▇ |
|BFIK_open_3 |__Ich habe eine aktive Vorstellungskraft, bin phantasievoll.__ |rating_button |5            |haven_labelled |1. 1: Trifft überhaupt nicht zu,<br>2. 2,<br>3. 3,<br>4. 4,<br>5. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |22         |         0|             1|2   |4.5    |5   | 4.214286| 0.9567361|              6|▁▁▂▁▁▅▁▇ |








### Scale: BFIK_consc {#BFIK_consc .tabset}
<a name="BFIK_consc_3"></a><a name="BFIK_consc_4"></a><a name="BFIK_consc_2R"></a><a name="BFIK_consc_1"></a>

#### Overview {#BFIK_consc_likert}

__Reliability__: Not computed.

__Missing__: 0.


![Likert plot of scale BFIK_consc items](codebook_files/figure-latex/cb_codebook_data_BFIK_consc_likert-22-1.pdf) 

![Distribution of scale BFIK_consc](codebook_files/figure-latex/cb_codebook_data_BFIK_consc_distribution-23-1.pdf) 

#### Reliability details {#BFIK_consc_reliability}



#### Summary statistics {#BFIK_consc_summary}

|name          |label                                         |type          |type_options |data_type      |value_labels                                                                                                                                |optional |item_order | n_missing| complete_rate|min |median |max |     mean|        sd| n_value_labels|hist     |
|:-------------|:---------------------------------------------|:-------------|:------------|:--------------|:-------------------------------------------------------------------------------------------------------------------------------------------|:--------|:----------|---------:|-------------:|:---|:------|:---|--------:|---------:|--------------:|:--------|
|BFIK_consc_3  |__Ich bin tüchtig und arbeite flott.__        |rating_button |5            |haven_labelled |1. 1: Trifft überhaupt nicht zu,<br>2. 2,<br>3. 3,<br>4. 4,<br>5. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |10         |         0|             1|1   |4      |5   | 3.500000| 1.0363755|              6|▁▂▁▅▁▇▁▂ |
|BFIK_consc_4  |__Ich mache Pläne und führe sie auch durch.__ |rating_button |5            |haven_labelled |1. 1: Trifft überhaupt nicht zu,<br>2. 2,<br>3. 3,<br>4. 4,<br>5. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |11         |         0|             1|2   |4      |5   | 3.857143| 0.7559289|              6|▁▁▃▁▁▇▁▂ |
|BFIK_consc_2R |__Ich bin bequem, neige zur Faulheit.__       |rating_button |5            |haven_labelled |5. 1: Trifft überhaupt nicht zu,<br>4. 2,<br>3. 3,<br>2. 4,<br>1. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |12         |         0|             1|1   |4      |5   | 3.178571| 1.3067792|              6|▃▂▁▃▁▇▁▂ |
|BFIK_consc_1  |__Ich erledige Aufgaben gründlich.__          |rating_button |5            |haven_labelled |1. 1: Trifft überhaupt nicht zu,<br>2. 2,<br>3. 3,<br>4. 4,<br>5. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |18         |         0|             1|2   |4      |5   | 4.071429| 0.8997354|              6|▁▁▂▁▁▇▁▇ |








### Scale: BFIK_extra {#BFIK_extra .tabset}
<a name="BFIK_extra_2"></a><a name="BFIK_extra_3R"></a><a name="BFIK_extra_4"></a><a name="BFIK_extra_1R"></a>

#### Overview {#BFIK_extra_likert}

__Reliability__: Not computed.

__Missing__: 0.


![Likert plot of scale BFIK_extra items](codebook_files/figure-latex/cb_codebook_data_BFIK_extra_likert-28-1.pdf) 

![Distribution of scale BFIK_extra](codebook_files/figure-latex/cb_codebook_data_BFIK_extra_distribution-29-1.pdf) 

#### Reliability details {#BFIK_extra_reliability}



#### Summary statistics {#BFIK_extra_summary}

|name          |label                                                            |type          |type_options |data_type      |value_labels                                                                                                                                |optional |item_order | n_missing| complete_rate|min |median |max |     mean|       sd| n_value_labels|hist     |
|:-------------|:----------------------------------------------------------------|:-------------|:------------|:--------------|:-------------------------------------------------------------------------------------------------------------------------------------------|:--------|:----------|---------:|-------------:|:---|:------|:---|--------:|--------:|--------------:|:--------|
|BFIK_extra_2  |__Ich bin begeisterungsfähig und kann andere leicht mitreißen.__ |rating_button |5            |haven_labelled |1. 1: Trifft überhaupt nicht zu,<br>2. 2,<br>3. 3,<br>4. 4,<br>5. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |6          |         0|             1|1   |4      |5   | 4.178571| 1.090483|              6|▁▁▁▁▁▇▁▇ |
|BFIK_extra_3R |__Ich bin eher der "stille Typ", wortkarg.__                     |rating_button |5            |haven_labelled |5. 1: Trifft überhaupt nicht zu,<br>4. 2,<br>3. 3,<br>2. 4,<br>1. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |14         |         0|             1|1   |4      |5   | 3.750000| 1.205696|              6|▂▂▁▅▁▇▁▇ |
|BFIK_extra_4  |__Ich gehe aus mir heraus, bin gesellig.__                       |rating_button |5            |haven_labelled |1. 1: Trifft überhaupt nicht zu,<br>2. 2,<br>3. 3,<br>4. 4,<br>5. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |20         |         0|             1|1   |4      |5   | 3.857143| 1.112697|              6|▁▂▁▃▁▇▁▆ |
|BFIK_extra_1R |__Ich bin eher zurückhaltend, reserviert.__                      |rating_button |5            |haven_labelled |5. 1: Trifft überhaupt nicht zu,<br>4. 2,<br>3. 3,<br>2. 4,<br>1. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |21         |         0|             1|1   |4      |5   | 3.607143| 1.196888|              6|▁▅▁▆▁▇▁▇ |








### Scale: BFIK_neuro {#BFIK_neuro .tabset}
<a name="BFIK_neuro_2R"></a><a name="BFIK_neuro_3"></a><a name="BFIK_neuro_4"></a>

#### Overview {#BFIK_neuro_likert}

__Reliability__: Not computed.

__Missing__: 0.


![Likert plot of scale BFIK_neuro items](codebook_files/figure-latex/cb_codebook_data_BFIK_neuro_likert-34-1.pdf) 

![Distribution of scale BFIK_neuro](codebook_files/figure-latex/cb_codebook_data_BFIK_neuro_distribution-35-1.pdf) 

#### Reliability details {#BFIK_neuro_reliability}



#### Summary statistics {#BFIK_neuro_summary}

|name          |label                                                                      |type          |type_options |data_type      |value_labels                                                                                                                                |optional |item_order | n_missing| complete_rate|min |median |max |     mean|        sd| n_value_labels|hist     |
|:-------------|:--------------------------------------------------------------------------|:-------------|:------------|:--------------|:-------------------------------------------------------------------------------------------------------------------------------------------|:--------|:----------|---------:|-------------:|:---|:------|:---|--------:|---------:|--------------:|:--------|
|BFIK_neuro_2R |__Ich bin entspannt, lasse mich durch Stress nicht aus der Ruhe bringen.__ |rating_button |5            |haven_labelled |5. 1: Trifft überhaupt nicht zu,<br>4. 2,<br>3. 3,<br>2. 4,<br>1. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |9          |         0|             1|2   |3      |5   | 3.107143| 0.8751417|              6|▆▁▇▁▁▇▁▁ |
|BFIK_neuro_3  |__Ich mache mir viele Sorgen.__                                            |rating_button |5            |haven_labelled |1. 1: Trifft überhaupt nicht zu,<br>2. 2,<br>3. 3,<br>4. 4,<br>5. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |15         |         0|             1|1   |3      |5   | 3.071429| 1.2744954|              6|▃▇▁▇▁▅▁▅ |
|BFIK_neuro_4  |__Ich werde leicht nervös und unsicher.__                                  |rating_button |5            |haven_labelled |1. 1: Trifft überhaupt nicht zu,<br>2. 2,<br>3. 3,<br>4. 4,<br>5. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |16         |         0|             1|1   |2      |4   | 2.500000| 1.2018504|              6|▆▁▇▁▁▂▁▇ |


## Missingness report


|description                   | expired| var_miss| n_miss|
|:-----------------------------|-------:|--------:|------:|
|Missing values in 1 variables |       0|        1|     28|
|Missing values per variable   |      28|       28|     28|



## Codebook table


|name                                       |label                                                                      |type          |type_options |data_type      |value_labels                                                                                                                                |optional |scale_item_names                                          |item_order | n_missing| complete_rate| n_unique| empty|count |min                 |median              |max                 |     mean|        sd| whitespace| n_value_labels|hist     |
|:------------------------------------------|:--------------------------------------------------------------------------|:-------------|:------------|:--------------|:-------------------------------------------------------------------------------------------------------------------------------------------|:--------|:---------------------------------------------------------|:----------|---------:|-------------:|--------:|-----:|:-----|:-------------------|:-------------------|:-------------------|--------:|---------:|----------:|--------------:|:--------|
|<a href="#session">session</a>             |NA                                                                         |NA            |NA           |character      |NA                                                                                                                                          |NA       |NA                                                        |NA         |         0|             1|       28|     0|NA    |64                  |NA                  |64                  |       NA|        NA|          0|             NA|NA       |
|<a href="#created">created</a>             |user first opened survey                                                   |NA            |NA           |POSIXct        |NA                                                                                                                                          |NA       |NA                                                        |NA         |         0|             1|       28|    NA|NA    |2016-07-08 03:54:16 |2016-07-08 06:47:07 |2016-11-02 16:19:50 |       NA|        NA|         NA|             NA|NA       |
|<a href="#modified">modified</a>           |user last edited survey                                                    |NA            |NA           |POSIXct        |NA                                                                                                                                          |NA       |NA                                                        |NA         |         0|             1|       28|    NA|NA    |2016-07-08 03:55:43 |2016-07-08 08:23:22 |2016-11-02 16:21:53 |       NA|        NA|         NA|             NA|NA       |
|<a href="#ended">ended</a>                 |user finished survey                                                       |NA            |NA           |POSIXct        |NA                                                                                                                                          |NA       |NA                                                        |NA         |         0|             1|       28|    NA|NA    |2016-07-08 03:55:43 |2016-07-08 08:23:22 |2016-11-02 16:21:53 |       NA|        NA|         NA|             NA|NA       |
|<a href="#expired">expired</a>             |NA                                                                         |NA            |NA           |logical        |NA                                                                                                                                          |NA       |NA                                                        |NA         |        28|             0|       NA|    NA|:     |NA                  |NA                  |NA                  |      NaN|        NA|         NA|             NA|NA       |
|<a href="#BFIK_open_2">BFIK_open_2</a>     |__Ich bin tiefsinnig, denke gerne über Sachen nach.__                      |rating_button |5            |haven_labelled |1. 1: Trifft überhaupt nicht zu,<br>2. 2,<br>3. 3,<br>4. 4,<br>5. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |NA                                                        |4          |         0|             1|       NA|    NA|NA    |2                   |4.0                 |5                   | 4.214286| 0.7382232|         NA|              6|▁▁▁▁▁▇▁▅ |
|<a href="#BFIK_agree_4R">BFIK_agree_4R</a> |__Ich kann mich schroff und abweisend anderen gegenüber verhalten.__       |rating_button |5            |haven_labelled |5. 1: Trifft überhaupt nicht zu,<br>4. 2,<br>3. 3,<br>2. 4,<br>1. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |NA                                                        |5          |         0|             1|       NA|    NA|NA    |1                   |3.0                 |5                   | 2.928571| 1.1841100|         NA|              6|▂▇▁▃▁▅▁▂ |
|<a href="#BFIK_extra_2">BFIK_extra_2</a>   |__Ich bin begeisterungsfähig und kann andere leicht mitreißen.__           |rating_button |5            |haven_labelled |1. 1: Trifft überhaupt nicht zu,<br>2. 2,<br>3. 3,<br>4. 4,<br>5. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |NA                                                        |6          |         0|             1|       NA|    NA|NA    |1                   |4.0                 |5                   | 4.178571| 1.0904831|         NA|              6|▁▁▁▁▁▇▁▇ |
|<a href="#BFIK_agree_1R">BFIK_agree_1R</a> |__Ich neige dazu, andere zu kritisieren.__                                 |rating_button |5            |haven_labelled |5. 1: Trifft überhaupt nicht zu,<br>4. 2,<br>3. 3,<br>2. 4,<br>1. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |NA                                                        |7          |         0|             1|       NA|    NA|NA    |2                   |3.0                 |5                   | 3.000000| 0.9428090|         NA|              6|▇▁▅▁▁▆▁▁ |
|<a href="#BFIK_open_1">BFIK_open_1</a>     |__Ich bin vielseitig interessiert.__                                       |rating_button |5            |haven_labelled |1. 1: Trifft überhaupt nicht zu,<br>2. 2,<br>3. 3,<br>4. 4,<br>5. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |NA                                                        |8          |         0|             1|       NA|    NA|NA    |2                   |5.0                 |5                   | 4.392857| 0.8317445|         NA|              6|▁▁▂▁▁▃▁▇ |
|<a href="#BFIK_neuro_2R">BFIK_neuro_2R</a> |__Ich bin entspannt, lasse mich durch Stress nicht aus der Ruhe bringen.__ |rating_button |5            |haven_labelled |5. 1: Trifft überhaupt nicht zu,<br>4. 2,<br>3. 3,<br>2. 4,<br>1. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |NA                                                        |9          |         0|             1|       NA|    NA|NA    |2                   |3.0                 |5                   | 3.107143| 0.8751417|         NA|              6|▆▁▇▁▁▇▁▁ |
|<a href="#BFIK_consc_3">BFIK_consc_3</a>   |__Ich bin tüchtig und arbeite flott.__                                     |rating_button |5            |haven_labelled |1. 1: Trifft überhaupt nicht zu,<br>2. 2,<br>3. 3,<br>4. 4,<br>5. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |NA                                                        |10         |         0|             1|       NA|    NA|NA    |1                   |4.0                 |5                   | 3.500000| 1.0363755|         NA|              6|▁▂▁▅▁▇▁▂ |
|<a href="#BFIK_consc_4">BFIK_consc_4</a>   |__Ich mache Pläne und führe sie auch durch.__                              |rating_button |5            |haven_labelled |1. 1: Trifft überhaupt nicht zu,<br>2. 2,<br>3. 3,<br>4. 4,<br>5. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |NA                                                        |11         |         0|             1|       NA|    NA|NA    |2                   |4.0                 |5                   | 3.857143| 0.7559289|         NA|              6|▁▁▃▁▁▇▁▂ |
|<a href="#BFIK_consc_2R">BFIK_consc_2R</a> |__Ich bin bequem, neige zur Faulheit.__                                    |rating_button |5            |haven_labelled |5. 1: Trifft überhaupt nicht zu,<br>4. 2,<br>3. 3,<br>2. 4,<br>1. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |NA                                                        |12         |         0|             1|       NA|    NA|NA    |1                   |4.0                 |5                   | 3.178571| 1.3067792|         NA|              6|▃▂▁▃▁▇▁▂ |
|<a href="#BFIK_agree_3R">BFIK_agree_3R</a> |__Ich kann mich kalt und distanziert verhalten.__                          |rating_button |5            |haven_labelled |5. 1: Trifft überhaupt nicht zu,<br>4. 2,<br>3. 3,<br>2. 4,<br>1. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |NA                                                        |13         |         0|             1|       NA|    NA|NA    |1                   |3.0                 |5                   | 3.035714| 1.2904820|         NA|              6|▂▇▁▃▁▇▁▃ |
|<a href="#BFIK_extra_3R">BFIK_extra_3R</a> |__Ich bin eher der "stille Typ", wortkarg.__                               |rating_button |5            |haven_labelled |5. 1: Trifft überhaupt nicht zu,<br>4. 2,<br>3. 3,<br>2. 4,<br>1. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |NA                                                        |14         |         0|             1|       NA|    NA|NA    |1                   |4.0                 |5                   | 3.750000| 1.2056964|         NA|              6|▂▂▁▅▁▇▁▇ |
|<a href="#BFIK_neuro_3">BFIK_neuro_3</a>   |__Ich mache mir viele Sorgen.__                                            |rating_button |5            |haven_labelled |1. 1: Trifft überhaupt nicht zu,<br>2. 2,<br>3. 3,<br>4. 4,<br>5. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |NA                                                        |15         |         0|             1|       NA|    NA|NA    |1                   |3.0                 |5                   | 3.071429| 1.2744954|         NA|              6|▃▇▁▇▁▅▁▅ |
|<a href="#BFIK_neuro_4">BFIK_neuro_4</a>   |__Ich werde leicht nervös und unsicher.__                                  |rating_button |5            |haven_labelled |1. 1: Trifft überhaupt nicht zu,<br>2. 2,<br>3. 3,<br>4. 4,<br>5. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |NA                                                        |16         |         0|             1|       NA|    NA|NA    |1                   |2.0                 |4                   | 2.500000| 1.2018504|         NA|              6|▆▁▇▁▁▂▁▇ |
|<a href="#BFIK_agree_2">BFIK_agree_2</a>   |__Ich schenke anderen leicht Vertrauen, glaube an das Gute im Menschen.__  |rating_button |5            |haven_labelled |1. 1: Trifft überhaupt nicht zu,<br>2. 2,<br>3. 3,<br>4. 4,<br>5. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |NA                                                        |17         |         0|             1|       NA|    NA|NA    |1                   |4.0                 |5                   | 3.500000| 1.2619796|         NA|              6|▂▅▁▅▁▇▁▆ |
|<a href="#BFIK_consc_1">BFIK_consc_1</a>   |__Ich erledige Aufgaben gründlich.__                                       |rating_button |5            |haven_labelled |1. 1: Trifft überhaupt nicht zu,<br>2. 2,<br>3. 3,<br>4. 4,<br>5. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |NA                                                        |18         |         0|             1|       NA|    NA|NA    |2                   |4.0                 |5                   | 4.071429| 0.8997354|         NA|              6|▁▁▂▁▁▇▁▇ |
|<a href="#BFIK_open_4">BFIK_open_4</a>     |__Ich schätze künstlerische und ästhetische Eindrücke.__                   |rating_button |5            |haven_labelled |1. 1: Trifft überhaupt nicht zu,<br>2. 2,<br>3. 3,<br>4. 4,<br>5. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |NA                                                        |19         |         0|             1|       NA|    NA|NA    |1                   |4.0                 |5                   | 4.214286| 0.9567361|         NA|              6|▁▁▁▂▁▆▁▇ |
|<a href="#BFIK_extra_4">BFIK_extra_4</a>   |__Ich gehe aus mir heraus, bin gesellig.__                                 |rating_button |5            |haven_labelled |1. 1: Trifft überhaupt nicht zu,<br>2. 2,<br>3. 3,<br>4. 4,<br>5. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |NA                                                        |20         |         0|             1|       NA|    NA|NA    |1                   |4.0                 |5                   | 3.857143| 1.1126973|         NA|              6|▁▂▁▃▁▇▁▆ |
|<a href="#BFIK_extra_1R">BFIK_extra_1R</a> |__Ich bin eher zurückhaltend, reserviert.__                                |rating_button |5            |haven_labelled |5. 1: Trifft überhaupt nicht zu,<br>4. 2,<br>3. 3,<br>2. 4,<br>1. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |NA                                                        |21         |         0|             1|       NA|    NA|NA    |1                   |4.0                 |5                   | 3.607143| 1.1968875|         NA|              6|▁▅▁▆▁▇▁▇ |
|<a href="#BFIK_open_3">BFIK_open_3</a>     |__Ich habe eine aktive Vorstellungskraft, bin phantasievoll.__             |rating_button |5            |haven_labelled |1. 1: Trifft überhaupt nicht zu,<br>2. 2,<br>3. 3,<br>4. 4,<br>5. 5: Trifft voll und ganz zu,<br>NA. Item was never rendered for this user. |0        |NA                                                        |22         |         0|             1|       NA|    NA|NA    |2                   |4.5                 |5                   | 4.214286| 0.9567361|         NA|              6|▁▁▂▁▁▅▁▇ |
|<a href="#BFIK_agree">BFIK_agree</a>       |aggregate of 4 BFIK_agree items                                            |NA            |NA           |numeric        |NA                                                                                                                                          |NA       |BFIK_agree_4R, BFIK_agree_1R, BFIK_agree_3R, BFIK_agree_2 |NA         |         0|             1|       NA|    NA|NA    |1.5                 |3.0                 |4.8                 | 3.116071| 0.9316506|         NA|             NA|▂▇▅▅▃    |
|<a href="#BFIK_open">BFIK_open</a>         |aggregate of 4 BFIK_open items                                             |NA            |NA           |numeric        |NA                                                                                                                                          |NA       |BFIK_open_2, BFIK_open_1, BFIK_open_4, BFIK_open_3        |NA         |         0|             1|       NA|    NA|NA    |3.0                 |4.2                 |5.0                 | 4.258929| 0.5630692|         NA|             NA|▂▃▁▇▇    |
|<a href="#BFIK_consc">BFIK_consc</a>       |aggregate of 4 BFIK_consc items                                            |NA            |NA           |numeric        |NA                                                                                                                                          |NA       |BFIK_consc_3, BFIK_consc_4, BFIK_consc_2R, BFIK_consc_1   |NA         |         0|             1|       NA|    NA|NA    |2.0                 |3.8                 |5.0                 | 3.651786| 0.7915622|         NA|             NA|▂▃▇▇▃    |
|<a href="#BFIK_extra">BFIK_extra</a>       |aggregate of 4 BFIK_extra items                                            |NA            |NA           |numeric        |NA                                                                                                                                          |NA       |BFIK_extra_2, BFIK_extra_3R, BFIK_extra_4, BFIK_extra_1R  |NA         |         0|             1|       NA|    NA|NA    |1.5                 |4.2                 |5.0                 | 3.848214| 1.0099947|         NA|             NA|▂▂▃▅▇    |
|<a href="#BFIK_neuro">BFIK_neuro</a>       |aggregate of 3 BFIK_neuro items                                            |NA            |NA           |numeric        |NA                                                                                                                                          |NA       |BFIK_neuro_2R, BFIK_neuro_3, BFIK_neuro_4                 |NA         |         0|             1|       NA|    NA|NA    |1.3                 |2.8                 |4.3                 | 2.892857| 0.9254231|         NA|             NA|▅▇▇▆▇    |


<script type="application/ld+json">
{
  "name": "codebook_data",
  "datePublished": "2020-07-24",
  "description": "The dataset has N=28 rows and 29 columns.\n0 rows have no missing values on any column.\n\n\n## Table of variables\nThis table contains variable names, labels, and number of missing values.\nSee the complete codebook for more.\n\n|name          |label                                                                      | n_missing|\n|:-------------|:--------------------------------------------------------------------------|---------:|\n|session       |NA                                                                         |         0|\n|created       |user first opened survey                                                   |         0|\n|modified      |user last edited survey                                                    |         0|\n|ended         |user finished survey                                                       |         0|\n|expired       |NA                                                                         |        28|\n|BFIK_open_2   |__Ich bin tiefsinnig, denke gerne über Sachen nach.__                      |         0|\n|BFIK_agree_4R |__Ich kann mich schroff und abweisend anderen gegenüber verhalten.__       |         0|\n|BFIK_extra_2  |__Ich bin begeisterungsfähig und kann andere leicht mitreißen.__           |         0|\n|BFIK_agree_1R |__Ich neige dazu, andere zu kritisieren.__                                 |         0|\n|BFIK_open_1   |__Ich bin vielseitig interessiert.__                                       |         0|\n|BFIK_neuro_2R |__Ich bin entspannt, lasse mich durch Stress nicht aus der Ruhe bringen.__ |         0|\n|BFIK_consc_3  |__Ich bin tüchtig und arbeite flott.__                                     |         0|\n|BFIK_consc_4  |__Ich mache Pläne und führe sie auch durch.__                              |         0|\n|BFIK_consc_2R |__Ich bin bequem, neige zur Faulheit.__                                    |         0|\n|BFIK_agree_3R |__Ich kann mich kalt und distanziert verhalten.__                          |         0|\n|BFIK_extra_3R |__Ich bin eher der \"stille Typ\", wortkarg.__                               |         0|\n|BFIK_neuro_3  |__Ich mache mir viele Sorgen.__                                            |         0|\n|BFIK_neuro_4  |__Ich werde leicht nervös und unsicher.__                                  |         0|\n|BFIK_agree_2  |__Ich schenke anderen leicht Vertrauen, glaube an das Gute im Menschen.__  |         0|\n|BFIK_consc_1  |__Ich erledige Aufgaben gründlich.__                                       |         0|\n|BFIK_open_4   |__Ich schätze künstlerische und ästhetische Eindrücke.__                   |         0|\n|BFIK_extra_4  |__Ich gehe aus mir heraus, bin gesellig.__                                 |         0|\n|BFIK_extra_1R |__Ich bin eher zurückhaltend, reserviert.__                                |         0|\n|BFIK_open_3   |__Ich habe eine aktive Vorstellungskraft, bin phantasievoll.__             |         0|\n|BFIK_agree    |aggregate of 4 BFIK_agree items                                            |         0|\n|BFIK_open     |aggregate of 4 BFIK_open items                                             |         0|\n|BFIK_consc    |aggregate of 4 BFIK_consc items                                            |         0|\n|BFIK_extra    |aggregate of 4 BFIK_extra items                                            |         0|\n|BFIK_neuro    |aggregate of 3 BFIK_neuro items                                            |         0|\n\n### Note\nThis dataset was automatically described using the [codebook R package](https://rubenarslan.github.io/codebook/) (version 0.9.2).",
  "keywords": ["session", "created", "modified", "ended", "expired", "BFIK_open_2", "BFIK_agree_4R", "BFIK_extra_2", "BFIK_agree_1R", "BFIK_open_1", "BFIK_neuro_2R", "BFIK_consc_3", "BFIK_consc_4", "BFIK_consc_2R", "BFIK_agree_3R", "BFIK_extra_3R", "BFIK_neuro_3", "BFIK_neuro_4", "BFIK_agree_2", "BFIK_consc_1", "BFIK_open_4", "BFIK_extra_4", "BFIK_extra_1R", "BFIK_open_3", "BFIK_agree", "BFIK_open", "BFIK_consc", "BFIK_extra", "BFIK_neuro"],
  "@context": "http://schema.org/",
  "@type": "Dataset",
  "variableMeasured": [
    {
      "name": "session",
      "@type": "propertyValue"
    },
    {
      "name": "created",
      "description": "user first opened survey",
      "@type": "propertyValue"
    },
    {
      "name": "modified",
      "description": "user last edited survey",
      "@type": "propertyValue"
    },
    {
      "name": "ended",
      "description": "user finished survey",
      "@type": "propertyValue"
    },
    {
      "name": "expired",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_open_2",
      "description": "__Ich bin tiefsinnig, denke gerne über Sachen nach.__",
      "value": "1. 1: Trifft überhaupt nicht zu,\n2. 2,\n3. 3,\n4. 4,\n5. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_agree_4R",
      "description": "__Ich kann mich schroff und abweisend anderen gegenüber verhalten.__",
      "value": "5. 1: Trifft überhaupt nicht zu,\n4. 2,\n3. 3,\n2. 4,\n1. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_extra_2",
      "description": "__Ich bin begeisterungsfähig und kann andere leicht mitreißen.__",
      "value": "1. 1: Trifft überhaupt nicht zu,\n2. 2,\n3. 3,\n4. 4,\n5. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_agree_1R",
      "description": "__Ich neige dazu, andere zu kritisieren.__",
      "value": "5. 1: Trifft überhaupt nicht zu,\n4. 2,\n3. 3,\n2. 4,\n1. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_open_1",
      "description": "__Ich bin vielseitig interessiert.__",
      "value": "1. 1: Trifft überhaupt nicht zu,\n2. 2,\n3. 3,\n4. 4,\n5. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_neuro_2R",
      "description": "__Ich bin entspannt, lasse mich durch Stress nicht aus der Ruhe bringen.__",
      "value": "5. 1: Trifft überhaupt nicht zu,\n4. 2,\n3. 3,\n2. 4,\n1. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_consc_3",
      "description": "__Ich bin tüchtig und arbeite flott.__",
      "value": "1. 1: Trifft überhaupt nicht zu,\n2. 2,\n3. 3,\n4. 4,\n5. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_consc_4",
      "description": "__Ich mache Pläne und führe sie auch durch.__",
      "value": "1. 1: Trifft überhaupt nicht zu,\n2. 2,\n3. 3,\n4. 4,\n5. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_consc_2R",
      "description": "__Ich bin bequem, neige zur Faulheit.__",
      "value": "5. 1: Trifft überhaupt nicht zu,\n4. 2,\n3. 3,\n2. 4,\n1. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_agree_3R",
      "description": "__Ich kann mich kalt und distanziert verhalten.__",
      "value": "5. 1: Trifft überhaupt nicht zu,\n4. 2,\n3. 3,\n2. 4,\n1. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_extra_3R",
      "description": "__Ich bin eher der \"stille Typ\", wortkarg.__",
      "value": "5. 1: Trifft überhaupt nicht zu,\n4. 2,\n3. 3,\n2. 4,\n1. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_neuro_3",
      "description": "__Ich mache mir viele Sorgen.__",
      "value": "1. 1: Trifft überhaupt nicht zu,\n2. 2,\n3. 3,\n4. 4,\n5. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_neuro_4",
      "description": "__Ich werde leicht nervös und unsicher.__",
      "value": "1. 1: Trifft überhaupt nicht zu,\n2. 2,\n3. 3,\n4. 4,\n5. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_agree_2",
      "description": "__Ich schenke anderen leicht Vertrauen, glaube an das Gute im Menschen.__",
      "value": "1. 1: Trifft überhaupt nicht zu,\n2. 2,\n3. 3,\n4. 4,\n5. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_consc_1",
      "description": "__Ich erledige Aufgaben gründlich.__",
      "value": "1. 1: Trifft überhaupt nicht zu,\n2. 2,\n3. 3,\n4. 4,\n5. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_open_4",
      "description": "__Ich schätze künstlerische und ästhetische Eindrücke.__",
      "value": "1. 1: Trifft überhaupt nicht zu,\n2. 2,\n3. 3,\n4. 4,\n5. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_extra_4",
      "description": "__Ich gehe aus mir heraus, bin gesellig.__",
      "value": "1. 1: Trifft überhaupt nicht zu,\n2. 2,\n3. 3,\n4. 4,\n5. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_extra_1R",
      "description": "__Ich bin eher zurückhaltend, reserviert.__",
      "value": "5. 1: Trifft überhaupt nicht zu,\n4. 2,\n3. 3,\n2. 4,\n1. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_open_3",
      "description": "__Ich habe eine aktive Vorstellungskraft, bin phantasievoll.__",
      "value": "1. 1: Trifft überhaupt nicht zu,\n2. 2,\n3. 3,\n4. 4,\n5. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_agree",
      "description": "aggregate of 4 BFIK_agree items",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_open",
      "description": "aggregate of 4 BFIK_open items",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_consc",
      "description": "aggregate of 4 BFIK_consc items",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_extra",
      "description": "aggregate of 4 BFIK_extra items",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_neuro",
      "description": "aggregate of 3 BFIK_neuro items",
      "@type": "propertyValue"
    }
  ]
}
</script>

<details><summary>JSON-LD metadata</summary>
The following JSON-LD can be found by search engines, if you share this codebook
publicly on the web.

```json
{
  "name": "codebook_data",
  "datePublished": "2020-07-24",
  "description": "The dataset has N=28 rows and 29 columns.\n0 rows have no missing values on any column.\n\n\n## Table of variables\nThis table contains variable names, labels, and number of missing values.\nSee the complete codebook for more.\n\n|name          |label                                                                      | n_missing|\n|:-------------|:--------------------------------------------------------------------------|---------:|\n|session       |NA                                                                         |         0|\n|created       |user first opened survey                                                   |         0|\n|modified      |user last edited survey                                                    |         0|\n|ended         |user finished survey                                                       |         0|\n|expired       |NA                                                                         |        28|\n|BFIK_open_2   |__Ich bin tiefsinnig, denke gerne über Sachen nach.__                      |         0|\n|BFIK_agree_4R |__Ich kann mich schroff und abweisend anderen gegenüber verhalten.__       |         0|\n|BFIK_extra_2  |__Ich bin begeisterungsfähig und kann andere leicht mitreißen.__           |         0|\n|BFIK_agree_1R |__Ich neige dazu, andere zu kritisieren.__                                 |         0|\n|BFIK_open_1   |__Ich bin vielseitig interessiert.__                                       |         0|\n|BFIK_neuro_2R |__Ich bin entspannt, lasse mich durch Stress nicht aus der Ruhe bringen.__ |         0|\n|BFIK_consc_3  |__Ich bin tüchtig und arbeite flott.__                                     |         0|\n|BFIK_consc_4  |__Ich mache Pläne und führe sie auch durch.__                              |         0|\n|BFIK_consc_2R |__Ich bin bequem, neige zur Faulheit.__                                    |         0|\n|BFIK_agree_3R |__Ich kann mich kalt und distanziert verhalten.__                          |         0|\n|BFIK_extra_3R |__Ich bin eher der \"stille Typ\", wortkarg.__                               |         0|\n|BFIK_neuro_3  |__Ich mache mir viele Sorgen.__                                            |         0|\n|BFIK_neuro_4  |__Ich werde leicht nervös und unsicher.__                                  |         0|\n|BFIK_agree_2  |__Ich schenke anderen leicht Vertrauen, glaube an das Gute im Menschen.__  |         0|\n|BFIK_consc_1  |__Ich erledige Aufgaben gründlich.__                                       |         0|\n|BFIK_open_4   |__Ich schätze künstlerische und ästhetische Eindrücke.__                   |         0|\n|BFIK_extra_4  |__Ich gehe aus mir heraus, bin gesellig.__                                 |         0|\n|BFIK_extra_1R |__Ich bin eher zurückhaltend, reserviert.__                                |         0|\n|BFIK_open_3   |__Ich habe eine aktive Vorstellungskraft, bin phantasievoll.__             |         0|\n|BFIK_agree    |aggregate of 4 BFIK_agree items                                            |         0|\n|BFIK_open     |aggregate of 4 BFIK_open items                                             |         0|\n|BFIK_consc    |aggregate of 4 BFIK_consc items                                            |         0|\n|BFIK_extra    |aggregate of 4 BFIK_extra items                                            |         0|\n|BFIK_neuro    |aggregate of 3 BFIK_neuro items                                            |         0|\n\n### Note\nThis dataset was automatically described using the [codebook R package](https://rubenarslan.github.io/codebook/) (version 0.9.2).",
  "keywords": ["session", "created", "modified", "ended", "expired", "BFIK_open_2", "BFIK_agree_4R", "BFIK_extra_2", "BFIK_agree_1R", "BFIK_open_1", "BFIK_neuro_2R", "BFIK_consc_3", "BFIK_consc_4", "BFIK_consc_2R", "BFIK_agree_3R", "BFIK_extra_3R", "BFIK_neuro_3", "BFIK_neuro_4", "BFIK_agree_2", "BFIK_consc_1", "BFIK_open_4", "BFIK_extra_4", "BFIK_extra_1R", "BFIK_open_3", "BFIK_agree", "BFIK_open", "BFIK_consc", "BFIK_extra", "BFIK_neuro"],
  "@context": "http://schema.org/",
  "@type": "Dataset",
  "variableMeasured": [
    {
      "name": "session",
      "@type": "propertyValue"
    },
    {
      "name": "created",
      "description": "user first opened survey",
      "@type": "propertyValue"
    },
    {
      "name": "modified",
      "description": "user last edited survey",
      "@type": "propertyValue"
    },
    {
      "name": "ended",
      "description": "user finished survey",
      "@type": "propertyValue"
    },
    {
      "name": "expired",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_open_2",
      "description": "__Ich bin tiefsinnig, denke gerne über Sachen nach.__",
      "value": "1. 1: Trifft überhaupt nicht zu,\n2. 2,\n3. 3,\n4. 4,\n5. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_agree_4R",
      "description": "__Ich kann mich schroff und abweisend anderen gegenüber verhalten.__",
      "value": "5. 1: Trifft überhaupt nicht zu,\n4. 2,\n3. 3,\n2. 4,\n1. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_extra_2",
      "description": "__Ich bin begeisterungsfähig und kann andere leicht mitreißen.__",
      "value": "1. 1: Trifft überhaupt nicht zu,\n2. 2,\n3. 3,\n4. 4,\n5. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_agree_1R",
      "description": "__Ich neige dazu, andere zu kritisieren.__",
      "value": "5. 1: Trifft überhaupt nicht zu,\n4. 2,\n3. 3,\n2. 4,\n1. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_open_1",
      "description": "__Ich bin vielseitig interessiert.__",
      "value": "1. 1: Trifft überhaupt nicht zu,\n2. 2,\n3. 3,\n4. 4,\n5. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_neuro_2R",
      "description": "__Ich bin entspannt, lasse mich durch Stress nicht aus der Ruhe bringen.__",
      "value": "5. 1: Trifft überhaupt nicht zu,\n4. 2,\n3. 3,\n2. 4,\n1. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_consc_3",
      "description": "__Ich bin tüchtig und arbeite flott.__",
      "value": "1. 1: Trifft überhaupt nicht zu,\n2. 2,\n3. 3,\n4. 4,\n5. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_consc_4",
      "description": "__Ich mache Pläne und führe sie auch durch.__",
      "value": "1. 1: Trifft überhaupt nicht zu,\n2. 2,\n3. 3,\n4. 4,\n5. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_consc_2R",
      "description": "__Ich bin bequem, neige zur Faulheit.__",
      "value": "5. 1: Trifft überhaupt nicht zu,\n4. 2,\n3. 3,\n2. 4,\n1. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_agree_3R",
      "description": "__Ich kann mich kalt und distanziert verhalten.__",
      "value": "5. 1: Trifft überhaupt nicht zu,\n4. 2,\n3. 3,\n2. 4,\n1. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_extra_3R",
      "description": "__Ich bin eher der \"stille Typ\", wortkarg.__",
      "value": "5. 1: Trifft überhaupt nicht zu,\n4. 2,\n3. 3,\n2. 4,\n1. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_neuro_3",
      "description": "__Ich mache mir viele Sorgen.__",
      "value": "1. 1: Trifft überhaupt nicht zu,\n2. 2,\n3. 3,\n4. 4,\n5. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_neuro_4",
      "description": "__Ich werde leicht nervös und unsicher.__",
      "value": "1. 1: Trifft überhaupt nicht zu,\n2. 2,\n3. 3,\n4. 4,\n5. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_agree_2",
      "description": "__Ich schenke anderen leicht Vertrauen, glaube an das Gute im Menschen.__",
      "value": "1. 1: Trifft überhaupt nicht zu,\n2. 2,\n3. 3,\n4. 4,\n5. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_consc_1",
      "description": "__Ich erledige Aufgaben gründlich.__",
      "value": "1. 1: Trifft überhaupt nicht zu,\n2. 2,\n3. 3,\n4. 4,\n5. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_open_4",
      "description": "__Ich schätze künstlerische und ästhetische Eindrücke.__",
      "value": "1. 1: Trifft überhaupt nicht zu,\n2. 2,\n3. 3,\n4. 4,\n5. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_extra_4",
      "description": "__Ich gehe aus mir heraus, bin gesellig.__",
      "value": "1. 1: Trifft überhaupt nicht zu,\n2. 2,\n3. 3,\n4. 4,\n5. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_extra_1R",
      "description": "__Ich bin eher zurückhaltend, reserviert.__",
      "value": "5. 1: Trifft überhaupt nicht zu,\n4. 2,\n3. 3,\n2. 4,\n1. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_open_3",
      "description": "__Ich habe eine aktive Vorstellungskraft, bin phantasievoll.__",
      "value": "1. 1: Trifft überhaupt nicht zu,\n2. 2,\n3. 3,\n4. 4,\n5. 5: Trifft voll und ganz zu,\nNA. Item was never rendered for this user.",
      "maxValue": 5,
      "minValue": 1,
      "measurementTechnique": "self-report",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_agree",
      "description": "aggregate of 4 BFIK_agree items",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_open",
      "description": "aggregate of 4 BFIK_open items",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_consc",
      "description": "aggregate of 4 BFIK_consc items",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_extra",
      "description": "aggregate of 4 BFIK_extra items",
      "@type": "propertyValue"
    },
    {
      "name": "BFIK_neuro",
      "description": "aggregate of 3 BFIK_neuro items",
      "@type": "propertyValue"
    }
  ]
}`
```
</details>
