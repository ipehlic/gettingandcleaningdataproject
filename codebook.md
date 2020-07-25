---
title: "Codebook"
output:
  pdf_document:
    toc: yes
    toc_depth: 4
    latex_engine: xelatex
    keep_md: true
  html_document:
    toc: true
    toc_depth: 4
    toc_float: true
    code_folding: 'hide'
    self_contained: true
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
```

Now, we're preparing our data for the codebook.


```r
library(codebook)
#codebook_data <- run_analysis::Tidy_Data_Set
# to import an SPSS file from the same folder uncomment and edit the line below
# codebook_data <- rio::import("mydata.sav")
# for Stata
# codebook_data <- rio::import("mydata.dta")
# for CSV
codebook_data <- rio::import("TidyDataSet.txt")

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


Create codebook


```r
codebook(codebook_data)
```

```
## No missing values.
```






### Metadata

#### Description
__Dataset name__: codebook_data

The dataset has N=180 rows and 88 columns.
180 rows have no missing values on any column.

<details>
<summary title="Expand this section to see some additional metadata in a structured format that is useful for search engines">Metadata for search engines</summary>






- __Date published__: 2020-07-25



\begin{table}

\centering
\begin{tabular}[t]{l}
\hline
x\\
\hline
subject\\
\hline
Activity\\
\hline
TimeBodyAccelerometer.mean...X\\
\hline
TimeBodyAccelerometer.mean...Y\\
\hline
TimeBodyAccelerometer.mean...Z\\
\hline
TimeGravityAccelerometer.mean...X\\
\hline
TimeGravityAccelerometer.mean...Y\\
\hline
TimeGravityAccelerometer.mean...Z\\
\hline
TimeBodyAccelerometerJerk.mean...X\\
\hline
TimeBodyAccelerometerJerk.mean...Y\\
\hline
TimeBodyAccelerometerJerk.mean...Z\\
\hline
TimeBodyGyroscope.mean...X\\
\hline
TimeBodyGyroscope.mean...Y\\
\hline
TimeBodyGyroscope.mean...Z\\
\hline
TimeBodyGyroscopeJerk.mean...X\\
\hline
TimeBodyGyroscopeJerk.mean...Y\\
\hline
TimeBodyGyroscopeJerk.mean...Z\\
\hline
TimeBodyAccelerometerMagnitude.mean..\\
\hline
TimeGravityAccelerometerMagnitude.mean..\\
\hline
TimeBodyAccelerometerJerkMagnitude.mean..\\
\hline
TimeBodyGyroscopeMagnitude.mean..\\
\hline
TimeBodyGyroscopeJerkMagnitude.mean..\\
\hline
FrequencyBodyAccelerometer.mean...X\\
\hline
FrequencyBodyAccelerometer.mean...Y\\
\hline
FrequencyBodyAccelerometer.mean...Z\\
\hline
FrequencyBodyAccelerometer.meanFreq...X\\
\hline
FrequencyBodyAccelerometer.meanFreq...Y\\
\hline
FrequencyBodyAccelerometer.meanFreq...Z\\
\hline
FrequencyBodyAccelerometerJerk.mean...X\\
\hline
FrequencyBodyAccelerometerJerk.mean...Y\\
\hline
FrequencyBodyAccelerometerJerk.mean...Z\\
\hline
FrequencyBodyAccelerometerJerk.meanFreq...X\\
\hline
FrequencyBodyAccelerometerJerk.meanFreq...Y\\
\hline
FrequencyBodyAccelerometerJerk.meanFreq...Z\\
\hline
FrequencyBodyGyroscope.mean...X\\
\hline
FrequencyBodyGyroscope.mean...Y\\
\hline
FrequencyBodyGyroscope.mean...Z\\
\hline
FrequencyBodyGyroscope.meanFreq...X\\
\hline
FrequencyBodyGyroscope.meanFreq...Y\\
\hline
FrequencyBodyGyroscope.meanFreq...Z\\
\hline
FrequencyBodyAccelerometerMagnitude.mean..\\
\hline
FrequencyBodyAccelerometerMagnitude.meanFreq..\\
\hline
FrequencyBodyAccelerometerJerkMagnitude.mean..\\
\hline
FrequencyBodyAccelerometerJerkMagnitude.meanFreq..\\
\hline
FrequencyBodyGyroscopeMagnitude.mean..\\
\hline
FrequencyBodyGyroscopeMagnitude.meanFreq..\\
\hline
FrequencyBodyGyroscopeJerkMagnitude.mean..\\
\hline
FrequencyBodyGyroscopeJerkMagnitude.meanFreq..\\
\hline
Angle.TimeBodyAccelerometerMean.Gravity.\\
\hline
Angle.TimeBodyAccelerometerJerkMean..GravityMean.\\
\hline
Angle.TimeBodyGyroscopeMean.GravityMean.\\
\hline
Angle.TimeBodyGyroscopeJerkMean.GravityMean.\\
\hline
Angle.X.GravityMean.\\
\hline
Angle.Y.GravityMean.\\
\hline
Angle.Z.GravityMean.\\
\hline
TimeBodyAccelerometer.std...X\\
\hline
TimeBodyAccelerometer.std...Y\\
\hline
TimeBodyAccelerometer.std...Z\\
\hline
TimeGravityAccelerometer.std...X\\
\hline
TimeGravityAccelerometer.std...Y\\
\hline
TimeGravityAccelerometer.std...Z\\
\hline
TimeBodyAccelerometerJerk.std...X\\
\hline
TimeBodyAccelerometerJerk.std...Y\\
\hline
TimeBodyAccelerometerJerk.std...Z\\
\hline
TimeBodyGyroscope.std...X\\
\hline
TimeBodyGyroscope.std...Y\\
\hline
TimeBodyGyroscope.std...Z\\
\hline
TimeBodyGyroscopeJerk.std...X\\
\hline
TimeBodyGyroscopeJerk.std...Y\\
\hline
TimeBodyGyroscopeJerk.std...Z\\
\hline
TimeBodyAccelerometerMagnitude.std..\\
\hline
TimeGravityAccelerometerMagnitude.std..\\
\hline
TimeBodyAccelerometerJerkMagnitude.std..\\
\hline
TimeBodyGyroscopeMagnitude.std..\\
\hline
TimeBodyGyroscopeJerkMagnitude.std..\\
\hline
FrequencyBodyAccelerometer.std...X\\
\hline
FrequencyBodyAccelerometer.std...Y\\
\hline
FrequencyBodyAccelerometer.std...Z\\
\hline
FrequencyBodyAccelerometerJerk.std...X\\
\hline
FrequencyBodyAccelerometerJerk.std...Y\\
\hline
FrequencyBodyAccelerometerJerk.std...Z\\
\hline
FrequencyBodyGyroscope.std...X\\
\hline
FrequencyBodyGyroscope.std...Y\\
\hline
FrequencyBodyGyroscope.std...Z\\
\hline
FrequencyBodyAccelerometerMagnitude.std..\\
\hline
FrequencyBodyAccelerometerJerkMagnitude.std..\\
\hline
FrequencyBodyGyroscopeMagnitude.std..\\
\hline
FrequencyBodyGyroscopeJerkMagnitude.std..\\
\hline
\end{tabular}
\end{table}

</details>





#Variables


### subject {#subject .tabset}



#### Distribution {#subject_distribution}

![Distribution of values for subject](codebook_files/figure-latex/cb_codebook_data_subject_distribution-1.pdf) 

0 missing values.

#### Summary statistics {#subject_summary}

|name    |data_type | n_missing| complete_rate|min |median |max | mean|       sd|hist  |label |
|:-------|:---------|---------:|-------------:|:---|:------|:---|----:|--------:|:-----|:-----|
|subject |numeric   |         0|             1|1   |16     |30  | 15.5| 8.679585|▇▇▇▇▇ |NA    |




















### Activity {#Activity .tabset}



#### Distribution {#Activity_distribution}

![Distribution of values for Activity](codebook_files/figure-latex/cb_codebook_data_Activity_distribution-15-1.pdf) 

0 missing values.

#### Summary statistics {#Activity_summary}

|name     |data_type | n_missing| complete_rate| n_unique| empty|min |max | whitespace|label |
|:--------|:---------|---------:|-------------:|--------:|-----:|:---|:---|----------:|:-----|
|Activity |character |         0|             1|        6|     0|6   |18  |          0|NA    |




















### TimeBodyAccelerometer.mean...X {#TimeBodyAccelerometer_mean___X .tabset}



#### Distribution {#TimeBodyAccelerometer_mean___X_distribution}

![Distribution of values for TimeBodyAccelerometer.mean...X](codebook_files/figure-latex/cb_codebook_data_TimeBodyAccelerometer_mean___X_distribution-22-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyAccelerometer_mean___X_summary}

|name                           |data_type | n_missing| complete_rate|min  |median |max |      mean|        sd|hist  |label |
|:------------------------------|:---------|---------:|-------------:|:----|:------|:---|---------:|---------:|:-----|:-----|
|TimeBodyAccelerometer.mean...X |numeric   |         0|             1|0.22 |0.28   |0.3 | 0.2743027| 0.0121646|▁▁▂▇▂ |NA    |




















### TimeBodyAccelerometer.mean...Y {#TimeBodyAccelerometer_mean___Y .tabset}



#### Distribution {#TimeBodyAccelerometer_mean___Y_distribution}

![Distribution of values for TimeBodyAccelerometer.mean...Y](codebook_files/figure-latex/cb_codebook_data_TimeBodyAccelerometer_mean___Y_distribution-29-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyAccelerometer_mean___Y_summary}

|name                           |data_type | n_missing| complete_rate|min    |median |max     |       mean|        sd|hist  |label |
|:------------------------------|:---------|---------:|-------------:|:------|:------|:-------|----------:|---------:|:-----|:-----|
|TimeBodyAccelerometer.mean...Y |numeric   |         0|             1|-0.041 |-0.017 |-0.0013 | -0.0178755| 0.0057712|▁▂▇▇▁ |NA    |




















### TimeBodyAccelerometer.mean...Z {#TimeBodyAccelerometer_mean___Z .tabset}



#### Distribution {#TimeBodyAccelerometer_mean___Z_distribution}

![Distribution of values for TimeBodyAccelerometer.mean...Z](codebook_files/figure-latex/cb_codebook_data_TimeBodyAccelerometer_mean___Z_distribution-36-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyAccelerometer_mean___Z_summary}

|name                           |data_type | n_missing| complete_rate|min   |median |max    |       mean|       sd|hist  |label |
|:------------------------------|:---------|---------:|-------------:|:-----|:------|:------|----------:|--------:|:-----|:-----|
|TimeBodyAccelerometer.mean...Z |numeric   |         0|             1|-0.15 |-0.11  |-0.075 | -0.1091638| 0.009582|▁▁▇▅▁ |NA    |




















### TimeGravityAccelerometer.mean...X {#TimeGravityAccelerometer_mean___X .tabset}



#### Distribution {#TimeGravityAccelerometer_mean___X_distribution}

![Distribution of values for TimeGravityAccelerometer.mean...X](codebook_files/figure-latex/cb_codebook_data_TimeGravityAccelerometer_mean___X_distribution-43-1.pdf) 

0 missing values.

#### Summary statistics {#TimeGravityAccelerometer_mean___X_summary}

|name                              |data_type | n_missing| complete_rate|min   |median |max  |      mean|        sd|hist  |label |
|:---------------------------------|:---------|---------:|-------------:|:-----|:------|:----|---------:|---------:|:-----|:-----|
|TimeGravityAccelerometer.mean...X |numeric   |         0|             1|-0.68 |0.92   |0.97 | 0.6974775| 0.4872534|▁▁▁▁▇ |NA    |




















### TimeGravityAccelerometer.mean...Y {#TimeGravityAccelerometer_mean___Y .tabset}



#### Distribution {#TimeGravityAccelerometer_mean___Y_distribution}

![Distribution of values for TimeGravityAccelerometer.mean...Y](codebook_files/figure-latex/cb_codebook_data_TimeGravityAccelerometer_mean___Y_distribution-50-1.pdf) 

0 missing values.

#### Summary statistics {#TimeGravityAccelerometer_mean___Y_summary}

|name                              |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:---------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|TimeGravityAccelerometer.mean...Y |numeric   |         0|             1|-0.48 |-0.13  |0.96 | -0.0162128| 0.3452376|▇▇▂▁▂ |NA    |




















### TimeGravityAccelerometer.mean...Z {#TimeGravityAccelerometer_mean___Z .tabset}



#### Distribution {#TimeGravityAccelerometer_mean___Z_distribution}

![Distribution of values for TimeGravityAccelerometer.mean...Z](codebook_files/figure-latex/cb_codebook_data_TimeGravityAccelerometer_mean___Z_distribution-57-1.pdf) 

0 missing values.

#### Summary statistics {#TimeGravityAccelerometer_mean___Z_summary}

|name                              |data_type | n_missing| complete_rate|min  |median |max  |      mean|        sd|hist  |label |
|:---------------------------------|:---------|---------:|-------------:|:----|:------|:----|---------:|---------:|:-----|:-----|
|TimeGravityAccelerometer.mean...Z |numeric   |         0|             1|-0.5 |0.024  |0.96 | 0.0741279| 0.2887919|▂▇▃▁▁ |NA    |




















### TimeBodyAccelerometerJerk.mean...X {#TimeBodyAccelerometerJerk_mean___X .tabset}



#### Distribution {#TimeBodyAccelerometerJerk_mean___X_distribution}

![Distribution of values for TimeBodyAccelerometerJerk.mean...X](codebook_files/figure-latex/cb_codebook_data_TimeBodyAccelerometerJerk_mean___X_distribution-64-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyAccelerometerJerk_mean___X_summary}

|name                               |data_type | n_missing| complete_rate|min   |median |max  |      mean|       sd|hist  |label |
|:----------------------------------|:---------|---------:|-------------:|:-----|:------|:----|---------:|--------:|:-----|:-----|
|TimeBodyAccelerometerJerk.mean...X |numeric   |         0|             1|0.043 |0.076  |0.13 | 0.0794736| 0.012588|▁▇▃▂▁ |NA    |




















### TimeBodyAccelerometerJerk.mean...Y {#TimeBodyAccelerometerJerk_mean___Y .tabset}



#### Distribution {#TimeBodyAccelerometerJerk_mean___Y_distribution}

![Distribution of values for TimeBodyAccelerometerJerk.mean...Y](codebook_files/figure-latex/cb_codebook_data_TimeBodyAccelerometerJerk_mean___Y_distribution-71-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyAccelerometerJerk_mean___Y_summary}

|name                               |data_type | n_missing| complete_rate|min    |median |max   |      mean|        sd|hist  |label |
|:----------------------------------|:---------|---------:|-------------:|:------|:------|:-----|---------:|---------:|:-----|:-----|
|TimeBodyAccelerometerJerk.mean...Y |numeric   |         0|             1|-0.039 |0.0095 |0.057 | 0.0075652| 0.0135764|▁▃▇▂▁ |NA    |




















### TimeBodyAccelerometerJerk.mean...Z {#TimeBodyAccelerometerJerk_mean___Z .tabset}



#### Distribution {#TimeBodyAccelerometerJerk_mean___Z_distribution}

![Distribution of values for TimeBodyAccelerometerJerk.mean...Z](codebook_files/figure-latex/cb_codebook_data_TimeBodyAccelerometerJerk_mean___Z_distribution-78-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyAccelerometerJerk_mean___Z_summary}

|name                               |data_type | n_missing| complete_rate|min    |median  |max   |       mean|        sd|hist  |label |
|:----------------------------------|:---------|---------:|-------------:|:------|:-------|:-----|----------:|---------:|:-----|:-----|
|TimeBodyAccelerometerJerk.mean...Z |numeric   |         0|             1|-0.067 |-0.0039 |0.038 | -0.0049534| 0.0134621|▁▁▇▇▁ |NA    |




















### TimeBodyGyroscope.mean...X {#TimeBodyGyroscope_mean___X .tabset}



#### Distribution {#TimeBodyGyroscope_mean___X_distribution}

![Distribution of values for TimeBodyGyroscope.mean...X](codebook_files/figure-latex/cb_codebook_data_TimeBodyGyroscope_mean___X_distribution-85-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyGyroscope_mean___X_summary}

|name                       |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:--------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|TimeBodyGyroscope.mean...X |numeric   |         0|             1|-0.21 |-0.029 |0.19 | -0.0324372| 0.0540518|▁▂▇▁▁ |NA    |




















### TimeBodyGyroscope.mean...Y {#TimeBodyGyroscope_mean___Y .tabset}



#### Distribution {#TimeBodyGyroscope_mean___Y_distribution}

![Distribution of values for TimeBodyGyroscope.mean...Y](codebook_files/figure-latex/cb_codebook_data_TimeBodyGyroscope_mean___Y_distribution-92-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyGyroscope_mean___Y_summary}

|name                       |data_type | n_missing| complete_rate|min  |median |max   |       mean|        sd|hist  |label |
|:--------------------------|:---------|---------:|-------------:|:----|:------|:-----|----------:|---------:|:-----|:-----|
|TimeBodyGyroscope.mean...Y |numeric   |         0|             1|-0.2 |-0.073 |0.027 | -0.0742596| 0.0355415|▁▁▇▃▁ |NA    |




















### TimeBodyGyroscope.mean...Z {#TimeBodyGyroscope_mean___Z .tabset}



#### Distribution {#TimeBodyGyroscope_mean___Z_distribution}

![Distribution of values for TimeBodyGyroscope.mean...Z](codebook_files/figure-latex/cb_codebook_data_TimeBodyGyroscope_mean___Z_distribution-99-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyGyroscope_mean___Z_summary}

|name                       |data_type | n_missing| complete_rate|min    |median |max  |      mean|        sd|hist  |label |
|:--------------------------|:---------|---------:|-------------:|:------|:------|:----|---------:|---------:|:-----|:-----|
|TimeBodyGyroscope.mean...Z |numeric   |         0|             1|-0.072 |0.085  |0.18 | 0.0874446| 0.0362125|▁▁▃▇▂ |NA    |




















### TimeBodyGyroscopeJerk.mean...X {#TimeBodyGyroscopeJerk_mean___X .tabset}



#### Distribution {#TimeBodyGyroscopeJerk_mean___X_distribution}

![Distribution of values for TimeBodyGyroscopeJerk.mean...X](codebook_files/figure-latex/cb_codebook_data_TimeBodyGyroscopeJerk_mean___X_distribution-106-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyGyroscopeJerk_mean___X_summary}

|name                           |data_type | n_missing| complete_rate|min   |median |max    |       mean|        sd|hist  |label |
|:------------------------------|:---------|---------:|-------------:|:-----|:------|:------|----------:|---------:|:-----|:-----|
|TimeBodyGyroscopeJerk.mean...X |numeric   |         0|             1|-0.16 |-0.099 |-0.022 | -0.0960568| 0.0233458|▁▂▇▁▁ |NA    |




















### TimeBodyGyroscopeJerk.mean...Y {#TimeBodyGyroscopeJerk_mean___Y .tabset}



#### Distribution {#TimeBodyGyroscopeJerk_mean___Y_distribution}

![Distribution of values for TimeBodyGyroscopeJerk.mean...Y](codebook_files/figure-latex/cb_codebook_data_TimeBodyGyroscopeJerk_mean___Y_distribution-113-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyGyroscopeJerk_mean___Y_summary}

|name                           |data_type | n_missing| complete_rate|min    |median |max    |       mean|       sd|hist  |label |
|:------------------------------|:---------|---------:|-------------:|:------|:------|:------|----------:|--------:|:-----|:-----|
|TimeBodyGyroscopeJerk.mean...Y |numeric   |         0|             1|-0.077 |-0.041 |-0.013 | -0.0426928| 0.009532|▁▂▇▃▁ |NA    |




















### TimeBodyGyroscopeJerk.mean...Z {#TimeBodyGyroscopeJerk_mean___Z .tabset}



#### Distribution {#TimeBodyGyroscopeJerk_mean___Z_distribution}

![Distribution of values for TimeBodyGyroscopeJerk.mean...Z](codebook_files/figure-latex/cb_codebook_data_TimeBodyGyroscopeJerk_mean___Z_distribution-120-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyGyroscopeJerk_mean___Z_summary}

|name                           |data_type | n_missing| complete_rate|min    |median |max     |       mean|       sd|hist  |label |
|:------------------------------|:---------|---------:|-------------:|:------|:------|:-------|----------:|--------:|:-----|:-----|
|TimeBodyGyroscopeJerk.mean...Z |numeric   |         0|             1|-0.092 |-0.053 |-0.0069 | -0.0548019| 0.012347|▁▅▇▁▁ |NA    |




















### TimeBodyAccelerometerMagnitude.mean.. {#TimeBodyAccelerometerMagnitude_mean__ .tabset}



#### Distribution {#TimeBodyAccelerometerMagnitude_mean___distribution}

![Distribution of values for TimeBodyAccelerometerMagnitude.mean..](codebook_files/figure-latex/cb_codebook_data_TimeBodyAccelerometerMagnitude_mean___distribution-127-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyAccelerometerMagnitude_mean___summary}

|name                                  |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:-------------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|TimeBodyAccelerometerMagnitude.mean.. |numeric   |         0|             1|-0.99 |-0.48  |0.64 | -0.4972897| 0.4728834|▇▁▅▃▁ |NA    |




















### TimeGravityAccelerometerMagnitude.mean.. {#TimeGravityAccelerometerMagnitude_mean__ .tabset}



#### Distribution {#TimeGravityAccelerometerMagnitude_mean___distribution}

![Distribution of values for TimeGravityAccelerometerMagnitude.mean..](codebook_files/figure-latex/cb_codebook_data_TimeGravityAccelerometerMagnitude_mean___distribution-134-1.pdf) 

0 missing values.

#### Summary statistics {#TimeGravityAccelerometerMagnitude_mean___summary}

|name                                     |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:----------------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|TimeGravityAccelerometerMagnitude.mean.. |numeric   |         0|             1|-0.99 |-0.48  |0.64 | -0.4972897| 0.4728834|▇▁▅▃▁ |NA    |




















### TimeBodyAccelerometerJerkMagnitude.mean.. {#TimeBodyAccelerometerJerkMagnitude_mean__ .tabset}



#### Distribution {#TimeBodyAccelerometerJerkMagnitude_mean___distribution}

![Distribution of values for TimeBodyAccelerometerJerkMagnitude.mean..](codebook_files/figure-latex/cb_codebook_data_TimeBodyAccelerometerJerkMagnitude_mean___distribution-141-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyAccelerometerJerkMagnitude_mean___summary}

|name                                      |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:-----------------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|TimeBodyAccelerometerJerkMagnitude.mean.. |numeric   |         0|             1|-0.99 |-0.82  |0.43 | -0.6079296| 0.3965272|▇▂▅▂▁ |NA    |




















### TimeBodyGyroscopeMagnitude.mean.. {#TimeBodyGyroscopeMagnitude_mean__ .tabset}



#### Distribution {#TimeBodyGyroscopeMagnitude_mean___distribution}

![Distribution of values for TimeBodyGyroscopeMagnitude.mean..](codebook_files/figure-latex/cb_codebook_data_TimeBodyGyroscopeMagnitude_mean___distribution-148-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyGyroscopeMagnitude_mean___summary}

|name                              |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:---------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|TimeBodyGyroscopeMagnitude.mean.. |numeric   |         0|             1|-0.98 |-0.66  |0.42 | -0.5651631| 0.3977338|▇▁▅▂▁ |NA    |




















### TimeBodyGyroscopeJerkMagnitude.mean.. {#TimeBodyGyroscopeJerkMagnitude_mean__ .tabset}



#### Distribution {#TimeBodyGyroscopeJerkMagnitude_mean___distribution}

![Distribution of values for TimeBodyGyroscopeJerkMagnitude.mean..](codebook_files/figure-latex/cb_codebook_data_TimeBodyGyroscopeJerkMagnitude_mean___distribution-155-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyGyroscopeJerkMagnitude_mean___summary}

|name                                  |data_type | n_missing| complete_rate|min |median |max   |       mean|        sd|hist  |label |
|:-------------------------------------|:---------|---------:|-------------:|:---|:------|:-----|----------:|---------:|:-----|:-----|
|TimeBodyGyroscopeJerkMagnitude.mean.. |numeric   |         0|             1|-1  |-0.86  |0.088 | -0.7363693| 0.2767541|▇▃▃▁▁ |NA    |




















### FrequencyBodyAccelerometer.mean...X {#FrequencyBodyAccelerometer_mean___X .tabset}



#### Distribution {#FrequencyBodyAccelerometer_mean___X_distribution}

![Distribution of values for FrequencyBodyAccelerometer.mean...X](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyAccelerometer_mean___X_distribution-162-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyAccelerometer_mean___X_summary}

|name                                |data_type | n_missing| complete_rate|min |median |max  |    mean|        sd|hist  |label |
|:-----------------------------------|:---------|---------:|-------------:|:---|:------|:----|-------:|---------:|:-----|:-----|
|FrequencyBodyAccelerometer.mean...X |numeric   |         0|             1|-1  |-0.77  |0.54 | -0.5758| 0.4300214|▇▁▃▂▁ |NA    |




















### FrequencyBodyAccelerometer.mean...Y {#FrequencyBodyAccelerometer_mean___Y .tabset}



#### Distribution {#FrequencyBodyAccelerometer_mean___Y_distribution}

![Distribution of values for FrequencyBodyAccelerometer.mean...Y](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyAccelerometer_mean___Y_distribution-169-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyAccelerometer_mean___Y_summary}

|name                                |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:-----------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyAccelerometer.mean...Y |numeric   |         0|             1|-0.99 |-0.59  |0.52 | -0.4887327| 0.4806496|▇▁▃▃▁ |NA    |




















### FrequencyBodyAccelerometer.mean...Z {#FrequencyBodyAccelerometer_mean___Z .tabset}



#### Distribution {#FrequencyBodyAccelerometer_mean___Z_distribution}

![Distribution of values for FrequencyBodyAccelerometer.mean...Z](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyAccelerometer_mean___Z_distribution-176-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyAccelerometer_mean___Z_summary}

|name                                |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:-----------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyAccelerometer.mean...Z |numeric   |         0|             1|-0.99 |-0.72  |0.28 | -0.6297388| 0.3556469|▇▂▅▁▁ |NA    |




















### FrequencyBodyAccelerometer.meanFreq...X {#FrequencyBodyAccelerometer_meanFreq___X .tabset}



#### Distribution {#FrequencyBodyAccelerometer_meanFreq___X_distribution}

![Distribution of values for FrequencyBodyAccelerometer.meanFreq...X](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyAccelerometer_meanFreq___X_distribution-183-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyAccelerometer_meanFreq___X_summary}

|name                                    |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:---------------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyAccelerometer.meanFreq...X |numeric   |         0|             1|-0.64 |-0.26  |0.16 | -0.2322661| 0.1935684|▂▇▆▆▃ |NA    |




















### FrequencyBodyAccelerometer.meanFreq...Y {#FrequencyBodyAccelerometer_meanFreq___Y .tabset}



#### Distribution {#FrequencyBodyAccelerometer_meanFreq___Y_distribution}

![Distribution of values for FrequencyBodyAccelerometer.meanFreq...Y](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyAccelerometer_meanFreq___Y_distribution-190-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyAccelerometer_meanFreq___Y_summary}

|name                                    |data_type | n_missing| complete_rate|min   |median |max  |      mean|        sd|hist  |label |
|:---------------------------------------|:---------|---------:|-------------:|:-----|:------|:----|---------:|---------:|:-----|:-----|
|FrequencyBodyAccelerometer.meanFreq...Y |numeric   |         0|             1|-0.38 |0.0079 |0.47 | 0.0115289| 0.1447051|▁▅▇▂▁ |NA    |




















### FrequencyBodyAccelerometer.meanFreq...Z {#FrequencyBodyAccelerometer_meanFreq___Z .tabset}



#### Distribution {#FrequencyBodyAccelerometer_meanFreq___Z_distribution}

![Distribution of values for FrequencyBodyAccelerometer.meanFreq...Z](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyAccelerometer_meanFreq___Z_distribution-197-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyAccelerometer_meanFreq___Z_summary}

|name                                    |data_type | n_missing| complete_rate|min   |median |max |      mean|        sd|hist  |label |
|:---------------------------------------|:---------|---------:|-------------:|:-----|:------|:---|---------:|---------:|:-----|:-----|
|FrequencyBodyAccelerometer.meanFreq...Z |numeric   |         0|             1|-0.52 |0.066  |0.4 | 0.0437174| 0.1850113|▁▂▆▇▃ |NA    |




















### FrequencyBodyAccelerometerJerk.mean...X {#FrequencyBodyAccelerometerJerk_mean___X .tabset}



#### Distribution {#FrequencyBodyAccelerometerJerk_mean___X_distribution}

![Distribution of values for FrequencyBodyAccelerometerJerk.mean...X](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyAccelerometerJerk_mean___X_distribution-204-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyAccelerometerJerk_mean___X_summary}

|name                                    |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:---------------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyAccelerometerJerk.mean...X |numeric   |         0|             1|-0.99 |-0.81  |0.47 | -0.6139282| 0.3982896|▇▂▃▂▁ |NA    |




















### FrequencyBodyAccelerometerJerk.mean...Y {#FrequencyBodyAccelerometerJerk_mean___Y .tabset}



#### Distribution {#FrequencyBodyAccelerometerJerk_mean___Y_distribution}

![Distribution of values for FrequencyBodyAccelerometerJerk.mean...Y](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyAccelerometerJerk_mean___Y_distribution-211-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyAccelerometerJerk_mean___Y_summary}

|name                                    |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:---------------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyAccelerometerJerk.mean...Y |numeric   |         0|             1|-0.99 |-0.78  |0.28 | -0.5881631| 0.4077491|▇▁▃▃▁ |NA    |




















### FrequencyBodyAccelerometerJerk.mean...Z {#FrequencyBodyAccelerometerJerk_mean___Z .tabset}



#### Distribution {#FrequencyBodyAccelerometerJerk_mean___Z_distribution}

![Distribution of values for FrequencyBodyAccelerometerJerk.mean...Z](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyAccelerometerJerk_mean___Z_distribution-218-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyAccelerometerJerk_mean___Z_summary}

|name                                    |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:---------------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyAccelerometerJerk.mean...Z |numeric   |         0|             1|-0.99 |-0.87  |0.16 | -0.7143585| 0.2970225|▇▂▃▁▁ |NA    |




















### FrequencyBodyAccelerometerJerk.meanFreq...X {#FrequencyBodyAccelerometerJerk_meanFreq___X .tabset}



#### Distribution {#FrequencyBodyAccelerometerJerk_meanFreq___X_distribution}

![Distribution of values for FrequencyBodyAccelerometerJerk.meanFreq...X](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyAccelerometerJerk_meanFreq___X_distribution-225-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyAccelerometerJerk_meanFreq___X_summary}

|name                                        |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:-------------------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyAccelerometerJerk.meanFreq...X |numeric   |         0|             1|-0.58 |-0.061 |0.33 | -0.0691018| 0.2541022|▂▇▂▅▇ |NA    |




















### FrequencyBodyAccelerometerJerk.meanFreq...Y {#FrequencyBodyAccelerometerJerk_meanFreq___Y .tabset}



#### Distribution {#FrequencyBodyAccelerometerJerk_meanFreq___Y_distribution}

![Distribution of values for FrequencyBodyAccelerometerJerk.meanFreq...Y](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyAccelerometerJerk_meanFreq___Y_distribution-232-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyAccelerometerJerk_meanFreq___Y_summary}

|name                                        |data_type | n_missing| complete_rate|min  |median |max |       mean|        sd|hist  |label |
|:-------------------------------------------|:---------|---------:|-------------:|:----|:------|:---|----------:|---------:|:-----|:-----|
|FrequencyBodyAccelerometerJerk.meanFreq...Y |numeric   |         0|             1|-0.6 |-0.23  |0.2 | -0.2281021| 0.1998647|▅▇▆▇▃ |NA    |




















### FrequencyBodyAccelerometerJerk.meanFreq...Z {#FrequencyBodyAccelerometerJerk_meanFreq___Z .tabset}



#### Distribution {#FrequencyBodyAccelerometerJerk_meanFreq___Z_distribution}

![Distribution of values for FrequencyBodyAccelerometerJerk.meanFreq...Z](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyAccelerometerJerk_meanFreq___Z_distribution-239-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyAccelerometerJerk_meanFreq___Z_summary}

|name                                        |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:-------------------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyAccelerometerJerk.meanFreq...Z |numeric   |         0|             1|-0.63 |-0.092 |0.23 | -0.1376023| 0.2078722|▂▅▃▇▅ |NA    |




















### FrequencyBodyGyroscope.mean...X {#FrequencyBodyGyroscope_mean___X .tabset}



#### Distribution {#FrequencyBodyGyroscope_mean___X_distribution}

![Distribution of values for FrequencyBodyGyroscope.mean...X](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyGyroscope_mean___X_distribution-246-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyGyroscope_mean___X_summary}

|name                            |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:-------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyGyroscope.mean...X |numeric   |         0|             1|-0.99 |-0.73  |0.47 | -0.6367396| 0.3467628|▇▂▅▁▁ |NA    |




















### FrequencyBodyGyroscope.mean...Y {#FrequencyBodyGyroscope_mean___Y .tabset}



#### Distribution {#FrequencyBodyGyroscope_mean___Y_distribution}

![Distribution of values for FrequencyBodyGyroscope.mean...Y](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyGyroscope_mean___Y_distribution-253-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyGyroscope_mean___Y_summary}

|name                            |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:-------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyGyroscope.mean...Y |numeric   |         0|             1|-0.99 |-0.81  |0.33 | -0.6766868| 0.3319182|▇▃▃▁▁ |NA    |




















### FrequencyBodyGyroscope.mean...Z {#FrequencyBodyGyroscope_mean___Z .tabset}



#### Distribution {#FrequencyBodyGyroscope_mean___Z_distribution}

![Distribution of values for FrequencyBodyGyroscope.mean...Z](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyGyroscope_mean___Z_distribution-260-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyGyroscope_mean___Z_summary}

|name                            |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:-------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyGyroscope.mean...Z |numeric   |         0|             1|-0.99 |-0.79  |0.49 | -0.6043912| 0.3842603|▇▂▅▁▁ |NA    |




















### FrequencyBodyGyroscope.meanFreq...X {#FrequencyBodyGyroscope_meanFreq___X .tabset}



#### Distribution {#FrequencyBodyGyroscope_meanFreq___X_distribution}

![Distribution of values for FrequencyBodyGyroscope.meanFreq...X](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyGyroscope_meanFreq___X_distribution-267-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyGyroscope_meanFreq___X_summary}

|name                                |data_type | n_missing| complete_rate|min  |median |max  |      mean|        sd|hist  |label |
|:-----------------------------------|:---------|---------:|-------------:|:----|:------|:----|---------:|---------:|:-----|:-----|
|FrequencyBodyGyroscope.meanFreq...X |numeric   |         0|             1|-0.4 |-0.12  |0.25 | -0.104551| 0.1480975|▃▇▇▅▂ |NA    |




















### FrequencyBodyGyroscope.meanFreq...Y {#FrequencyBodyGyroscope_meanFreq___Y .tabset}



#### Distribution {#FrequencyBodyGyroscope_meanFreq___Y_distribution}

![Distribution of values for FrequencyBodyGyroscope.meanFreq...Y](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyGyroscope_meanFreq___Y_distribution-274-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyGyroscope_meanFreq___Y_summary}

|name                                |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:-----------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyGyroscope.meanFreq...Y |numeric   |         0|             1|-0.67 |-0.16  |0.27 | -0.1674075| 0.1788011|▁▅▇▆▂ |NA    |




















### FrequencyBodyGyroscope.meanFreq...Z {#FrequencyBodyGyroscope_meanFreq___Z .tabset}



#### Distribution {#FrequencyBodyGyroscope_meanFreq___Z_distribution}

![Distribution of values for FrequencyBodyGyroscope.meanFreq...Z](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyGyroscope_meanFreq___Z_distribution-281-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyGyroscope_meanFreq___Z_summary}

|name                                |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:-----------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyGyroscope.meanFreq...Z |numeric   |         0|             1|-0.51 |-0.051 |0.38 | -0.0571809| 0.1652298|▁▃▇▃▁ |NA    |




















### FrequencyBodyAccelerometerMagnitude.mean.. {#FrequencyBodyAccelerometerMagnitude_mean__ .tabset}



#### Distribution {#FrequencyBodyAccelerometerMagnitude_mean___distribution}

![Distribution of values for FrequencyBodyAccelerometerMagnitude.mean..](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyAccelerometerMagnitude_mean___distribution-288-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyAccelerometerMagnitude_mean___summary}

|name                                       |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:------------------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyAccelerometerMagnitude.mean.. |numeric   |         0|             1|-0.99 |-0.67  |0.59 | -0.5365167| 0.4516451|▇▂▃▂▁ |NA    |




















### FrequencyBodyAccelerometerMagnitude.meanFreq.. {#FrequencyBodyAccelerometerMagnitude_meanFreq__ .tabset}



#### Distribution {#FrequencyBodyAccelerometerMagnitude_meanFreq___distribution}

![Distribution of values for FrequencyBodyAccelerometerMagnitude.meanFreq..](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyAccelerometerMagnitude_meanFreq___distribution-295-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyAccelerometerMagnitude_meanFreq___summary}

|name                                           |data_type | n_missing| complete_rate|min   |median |max  |      mean|        sd|hist  |label |
|:----------------------------------------------|:---------|---------:|-------------:|:-----|:------|:----|---------:|---------:|:-----|:-----|
|FrequencyBodyAccelerometerMagnitude.meanFreq.. |numeric   |         0|             1|-0.31 |0.081  |0.44 | 0.0761282| 0.1404479|▁▅▇▅▁ |NA    |




















### FrequencyBodyAccelerometerJerkMagnitude.mean.. {#FrequencyBodyAccelerometerJerkMagnitude_mean__ .tabset}



#### Distribution {#FrequencyBodyAccelerometerJerkMagnitude_mean___distribution}

![Distribution of values for FrequencyBodyAccelerometerJerkMagnitude.mean..](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyAccelerometerJerkMagnitude_mean___distribution-302-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyAccelerometerJerkMagnitude_mean___summary}

|name                                           |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:----------------------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyAccelerometerJerkMagnitude.mean.. |numeric   |         0|             1|-0.99 |-0.79  |0.54 | -0.5756175| 0.4312321|▇▂▃▂▁ |NA    |




















### FrequencyBodyAccelerometerJerkMagnitude.meanFreq.. {#FrequencyBodyAccelerometerJerkMagnitude_meanFreq__ .tabset}



#### Distribution {#FrequencyBodyAccelerometerJerkMagnitude_meanFreq___distribution}

![Distribution of values for FrequencyBodyAccelerometerJerkMagnitude.meanFreq..](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyAccelerometerJerkMagnitude_meanFreq___distribution-309-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyAccelerometerJerkMagnitude_meanFreq___summary}

|name                                               |data_type | n_missing| complete_rate|min   |median |max  |      mean|      sd|hist  |label |
|:--------------------------------------------------|:---------|---------:|-------------:|:-----|:------|:----|---------:|-------:|:-----|:-----|
|FrequencyBodyAccelerometerJerkMagnitude.meanFreq.. |numeric   |         0|             1|-0.13 |0.17   |0.49 | 0.1625459| 0.13783|▃▇▇▇▂ |NA    |




















### FrequencyBodyGyroscopeMagnitude.mean.. {#FrequencyBodyGyroscopeMagnitude_mean__ .tabset}



#### Distribution {#FrequencyBodyGyroscopeMagnitude_mean___distribution}

![Distribution of values for FrequencyBodyGyroscopeMagnitude.mean..](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyGyroscopeMagnitude_mean___distribution-316-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyGyroscopeMagnitude_mean___summary}

|name                                   |data_type | n_missing| complete_rate|min   |median |max |       mean|        sd|hist  |label |
|:--------------------------------------|:---------|---------:|-------------:|:-----|:------|:---|----------:|---------:|:-----|:-----|
|FrequencyBodyGyroscopeMagnitude.mean.. |numeric   |         0|             1|-0.99 |-0.77  |0.2 | -0.6670991| 0.3181183|▇▂▃▁▁ |NA    |




















### FrequencyBodyGyroscopeMagnitude.meanFreq.. {#FrequencyBodyGyroscopeMagnitude_meanFreq__ .tabset}



#### Distribution {#FrequencyBodyGyroscopeMagnitude_meanFreq___distribution}

![Distribution of values for FrequencyBodyGyroscopeMagnitude.meanFreq..](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyGyroscopeMagnitude_meanFreq___distribution-323-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyGyroscopeMagnitude_meanFreq___summary}

|name                                       |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:------------------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyGyroscopeMagnitude.meanFreq.. |numeric   |         0|             1|-0.46 |-0.054 |0.41 | -0.0360322| 0.1807351|▂▇▇▅▂ |NA    |




















### FrequencyBodyGyroscopeJerkMagnitude.mean.. {#FrequencyBodyGyroscopeJerkMagnitude_mean__ .tabset}



#### Distribution {#FrequencyBodyGyroscopeJerkMagnitude_mean___distribution}

![Distribution of values for FrequencyBodyGyroscopeJerkMagnitude.mean..](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyGyroscopeJerkMagnitude_mean___distribution-330-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyGyroscopeJerkMagnitude_mean___summary}

|name                                       |data_type | n_missing| complete_rate|min |median |max  |       mean|        sd|hist  |label |
|:------------------------------------------|:---------|---------:|-------------:|:---|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyGyroscopeJerkMagnitude.mean.. |numeric   |         0|             1|-1  |-0.88  |0.15 | -0.7563853| 0.2628722|▇▅▂▁▁ |NA    |




















### FrequencyBodyGyroscopeJerkMagnitude.meanFreq.. {#FrequencyBodyGyroscopeJerkMagnitude_meanFreq__ .tabset}



#### Distribution {#FrequencyBodyGyroscopeJerkMagnitude_meanFreq___distribution}

![Distribution of values for FrequencyBodyGyroscopeJerkMagnitude.meanFreq..](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyGyroscopeJerkMagnitude_meanFreq___distribution-337-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyGyroscopeJerkMagnitude_meanFreq___summary}

|name                                           |data_type | n_missing| complete_rate|min   |median |max  |      mean|        sd|hist  |label |
|:----------------------------------------------|:---------|---------:|-------------:|:-----|:------|:----|---------:|---------:|:-----|:-----|
|FrequencyBodyGyroscopeJerkMagnitude.meanFreq.. |numeric   |         0|             1|-0.18 |0.11   |0.43 | 0.1259225| 0.1083232|▁▅▇▆▁ |NA    |




















### Angle.TimeBodyAccelerometerMean.Gravity. {#Angle_TimeBodyAccelerometerMean_Gravity_ .tabset}



#### Distribution {#Angle_TimeBodyAccelerometerMean_Gravity__distribution}

![Distribution of values for Angle.TimeBodyAccelerometerMean.Gravity.](codebook_files/figure-latex/cb_codebook_data_Angle_TimeBodyAccelerometerMean_Gravity__distribution-344-1.pdf) 

0 missing values.

#### Summary statistics {#Angle_TimeBodyAccelerometerMean_Gravity__summary}

|name                                     |data_type | n_missing| complete_rate|min   |median |max  |      mean|        sd|hist  |label |
|:----------------------------------------|:---------|---------:|-------------:|:-----|:------|:----|---------:|---------:|:-----|:-----|
|Angle.TimeBodyAccelerometerMean.Gravity. |numeric   |         0|             1|-0.16 |0.0079 |0.13 | 0.0065557| 0.0396044|▁▁▇▇▁ |NA    |




















### Angle.TimeBodyAccelerometerJerkMean..GravityMean. {#Angle_TimeBodyAccelerometerJerkMean__GravityMean_ .tabset}



#### Distribution {#Angle_TimeBodyAccelerometerJerkMean__GravityMean__distribution}

![Distribution of values for Angle.TimeBodyAccelerometerJerkMean..GravityMean.](codebook_files/figure-latex/cb_codebook_data_Angle_TimeBodyAccelerometerJerkMean__GravityMean__distribution-351-1.pdf) 

0 missing values.

#### Summary statistics {#Angle_TimeBodyAccelerometerJerkMean__GravityMean__summary}

|name                                              |data_type | n_missing| complete_rate|min   |median |max |      mean|        sd|hist  |label |
|:-------------------------------------------------|:---------|---------:|-------------:|:-----|:------|:---|---------:|---------:|:-----|:-----|
|Angle.TimeBodyAccelerometerJerkMean..GravityMean. |numeric   |         0|             1|-0.12 |0.0031 |0.2 | 0.0006439| 0.0427632|▂▇▆▁▁ |NA    |




















### Angle.TimeBodyGyroscopeMean.GravityMean. {#Angle_TimeBodyGyroscopeMean_GravityMean_ .tabset}



#### Distribution {#Angle_TimeBodyGyroscopeMean_GravityMean__distribution}

![Distribution of values for Angle.TimeBodyGyroscopeMean.GravityMean.](codebook_files/figure-latex/cb_codebook_data_Angle_TimeBodyGyroscopeMean_GravityMean__distribution-358-1.pdf) 

0 missing values.

#### Summary statistics {#Angle_TimeBodyGyroscopeMean_GravityMean__summary}

|name                                     |data_type | n_missing| complete_rate|min   |median |max  |      mean|        sd|hist  |label |
|:----------------------------------------|:---------|---------:|-------------:|:-----|:------|:----|---------:|---------:|:-----|:-----|
|Angle.TimeBodyGyroscopeMean.GravityMean. |numeric   |         0|             1|-0.39 |0.021  |0.44 | 0.0219317| 0.1401276|▁▁▇▁▁ |NA    |




















### Angle.TimeBodyGyroscopeJerkMean.GravityMean. {#Angle_TimeBodyGyroscopeJerkMean_GravityMean_ .tabset}



#### Distribution {#Angle_TimeBodyGyroscopeJerkMean_GravityMean__distribution}

![Distribution of values for Angle.TimeBodyGyroscopeJerkMean.GravityMean.](codebook_files/figure-latex/cb_codebook_data_Angle_TimeBodyGyroscopeJerkMean_GravityMean__distribution-365-1.pdf) 

0 missing values.

#### Summary statistics {#Angle_TimeBodyGyroscopeJerkMean_GravityMean__summary}

|name                                         |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:--------------------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|Angle.TimeBodyGyroscopeJerkMean.GravityMean. |numeric   |         0|             1|-0.22 |-0.016 |0.18 | -0.0113732| 0.0729629|▁▃▇▅▁ |NA    |




















### Angle.X.GravityMean. {#Angle_X_GravityMean_ .tabset}



#### Distribution {#Angle_X_GravityMean__distribution}

![Distribution of values for Angle.X.GravityMean.](codebook_files/figure-latex/cb_codebook_data_Angle_X_GravityMean__distribution-372-1.pdf) 

0 missing values.

#### Summary statistics {#Angle_X_GravityMean__summary}

|name                 |data_type | n_missing| complete_rate|min   |median |max  |       mean|       sd|hist  |label |
|:--------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|--------:|:-----|:-----|
|Angle.X.GravityMean. |numeric   |         0|             1|-0.95 |-0.74  |0.74 | -0.5243065| 0.481228|▇▂▁▁▂ |NA    |




















### Angle.Y.GravityMean. {#Angle_Y_GravityMean_ .tabset}



#### Distribution {#Angle_Y_GravityMean__distribution}

![Distribution of values for Angle.Y.GravityMean.](codebook_files/figure-latex/cb_codebook_data_Angle_Y_GravityMean__distribution-379-1.pdf) 

0 missing values.

#### Summary statistics {#Angle_Y_GravityMean__summary}

|name                 |data_type | n_missing| complete_rate|min   |median |max  |      mean|        sd|hist  |label |
|:--------------------|:---------|---------:|-------------:|:-----|:------|:----|---------:|---------:|:-----|:-----|
|Angle.Y.GravityMean. |numeric   |         0|             1|-0.87 |0.17   |0.42 | 0.0786534| 0.2784784|▁▁▁▅▇ |NA    |




















### Angle.Z.GravityMean. {#Angle_Z_GravityMean_ .tabset}



#### Distribution {#Angle_Z_GravityMean__distribution}

![Distribution of values for Angle.Z.GravityMean.](codebook_files/figure-latex/cb_codebook_data_Angle_Z_GravityMean__distribution-386-1.pdf) 

0 missing values.

#### Summary statistics {#Angle_Z_GravityMean__summary}

|name                 |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:--------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|Angle.Z.GravityMean. |numeric   |         0|             1|-0.87 |0.0051 |0.39 | -0.0404362| 0.2308332|▁▁▁▇▂ |NA    |




















### TimeBodyAccelerometer.std...X {#TimeBodyAccelerometer_std___X .tabset}



#### Distribution {#TimeBodyAccelerometer_std___X_distribution}

![Distribution of values for TimeBodyAccelerometer.std...X](codebook_files/figure-latex/cb_codebook_data_TimeBodyAccelerometer_std___X_distribution-393-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyAccelerometer_std___X_summary}

|name                          |data_type | n_missing| complete_rate|min |median |max  |       mean|        sd|hist  |label |
|:-----------------------------|:---------|---------:|-------------:|:---|:------|:----|----------:|---------:|:-----|:-----|
|TimeBodyAccelerometer.std...X |numeric   |         0|             1|-1  |-0.75  |0.63 | -0.5576901| 0.4516911|▇▂▅▂▁ |NA    |




















### TimeBodyAccelerometer.std...Y {#TimeBodyAccelerometer_std___Y .tabset}



#### Distribution {#TimeBodyAccelerometer_std___Y_distribution}

![Distribution of values for TimeBodyAccelerometer.std...Y](codebook_files/figure-latex/cb_codebook_data_TimeBodyAccelerometer_std___Y_distribution-400-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyAccelerometer_std___Y_summary}

|name                          |data_type | n_missing| complete_rate|min   |median |max  |       mean|       sd|hist  |label |
|:-----------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|--------:|:-----|:-----|
|TimeBodyAccelerometer.std...Y |numeric   |         0|             1|-0.99 |-0.51  |0.62 | -0.4604626| 0.496565|▇▁▅▃▁ |NA    |




















### TimeBodyAccelerometer.std...Z {#TimeBodyAccelerometer_std___Z .tabset}



#### Distribution {#TimeBodyAccelerometer_std___Z_distribution}

![Distribution of values for TimeBodyAccelerometer.std...Z](codebook_files/figure-latex/cb_codebook_data_TimeBodyAccelerometer_std___Z_distribution-407-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyAccelerometer_std___Z_summary}

|name                          |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:-----------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|TimeBodyAccelerometer.std...Z |numeric   |         0|             1|-0.99 |-0.65  |0.61 | -0.5755602| 0.3955439|▇▂▅▁▁ |NA    |




















### TimeGravityAccelerometer.std...X {#TimeGravityAccelerometer_std___X .tabset}



#### Distribution {#TimeGravityAccelerometer_std___X_distribution}

![Distribution of values for TimeGravityAccelerometer.std...X](codebook_files/figure-latex/cb_codebook_data_TimeGravityAccelerometer_std___X_distribution-414-1.pdf) 

0 missing values.

#### Summary statistics {#TimeGravityAccelerometer_std___X_summary}

|name                             |data_type | n_missing| complete_rate|min |median |max   |       mean|        sd|hist  |label |
|:--------------------------------|:---------|---------:|-------------:|:---|:------|:-----|----------:|---------:|:-----|:-----|
|TimeGravityAccelerometer.std...X |numeric   |         0|             1|-1  |-0.97  |-0.83 | -0.9637525| 0.0250344|▇▆▁▁▁ |NA    |




















### TimeGravityAccelerometer.std...Y {#TimeGravityAccelerometer_std___Y .tabset}



#### Distribution {#TimeGravityAccelerometer_std___Y_distribution}

![Distribution of values for TimeGravityAccelerometer.std...Y](codebook_files/figure-latex/cb_codebook_data_TimeGravityAccelerometer_std___Y_distribution-421-1.pdf) 

0 missing values.

#### Summary statistics {#TimeGravityAccelerometer_std___Y_summary}

|name                             |data_type | n_missing| complete_rate|min   |median |max   |       mean|        sd|hist  |label |
|:--------------------------------|:---------|---------:|-------------:|:-----|:------|:-----|----------:|---------:|:-----|:-----|
|TimeGravityAccelerometer.std...Y |numeric   |         0|             1|-0.99 |-0.96  |-0.64 | -0.9524296| 0.0326557|▇▁▁▁▁ |NA    |




















### TimeGravityAccelerometer.std...Z {#TimeGravityAccelerometer_std___Z .tabset}



#### Distribution {#TimeGravityAccelerometer_std___Z_distribution}

![Distribution of values for TimeGravityAccelerometer.std...Z](codebook_files/figure-latex/cb_codebook_data_TimeGravityAccelerometer_std___Z_distribution-428-1.pdf) 

0 missing values.

#### Summary statistics {#TimeGravityAccelerometer_std___Z_summary}

|name                             |data_type | n_missing| complete_rate|min   |median |max   |      mean|        sd|hist  |label |
|:--------------------------------|:---------|---------:|-------------:|:-----|:------|:-----|---------:|---------:|:-----|:-----|
|TimeGravityAccelerometer.std...Z |numeric   |         0|             1|-0.99 |-0.95  |-0.61 | -0.936401| 0.0402912|▇▂▁▁▁ |NA    |




















### TimeBodyAccelerometerJerk.std...X {#TimeBodyAccelerometerJerk_std___X .tabset}



#### Distribution {#TimeBodyAccelerometerJerk_std___X_distribution}

![Distribution of values for TimeBodyAccelerometerJerk.std...X](codebook_files/figure-latex/cb_codebook_data_TimeBodyAccelerometerJerk_std___X_distribution-435-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyAccelerometerJerk_std___X_summary}

|name                              |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:---------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|TimeBodyAccelerometerJerk.std...X |numeric   |         0|             1|-0.99 |-0.81  |0.54 | -0.5949467| 0.4175865|▇▂▅▂▁ |NA    |




















### TimeBodyAccelerometerJerk.std...Y {#TimeBodyAccelerometerJerk_std___Y .tabset}



#### Distribution {#TimeBodyAccelerometerJerk_std___Y_distribution}

![Distribution of values for TimeBodyAccelerometerJerk.std...Y](codebook_files/figure-latex/cb_codebook_data_TimeBodyAccelerometerJerk_std___Y_distribution-442-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyAccelerometerJerk_std___Y_summary}

|name                              |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:---------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|TimeBodyAccelerometerJerk.std...Y |numeric   |         0|             1|-0.99 |-0.78  |0.36 | -0.5654147| 0.4330871|▇▁▃▃▁ |NA    |




















### TimeBodyAccelerometerJerk.std...Z {#TimeBodyAccelerometerJerk_std___Z .tabset}



#### Distribution {#TimeBodyAccelerometerJerk_std___Z_distribution}

![Distribution of values for TimeBodyAccelerometerJerk.std...Z](codebook_files/figure-latex/cb_codebook_data_TimeBodyAccelerometerJerk_std___Z_distribution-449-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyAccelerometerJerk_std___Z_summary}

|name                              |data_type | n_missing| complete_rate|min   |median |max   |       mean|        sd|hist  |label |
|:---------------------------------|:---------|---------:|-------------:|:-----|:------|:-----|----------:|---------:|:-----|:-----|
|TimeBodyAccelerometerJerk.std...Z |numeric   |         0|             1|-0.99 |-0.88  |0.031 | -0.7359577| 0.2768479|▇▂▃▁▁ |NA    |




















### TimeBodyGyroscope.std...X {#TimeBodyGyroscope_std___X .tabset}



#### Distribution {#TimeBodyGyroscope_std___X_distribution}

![Distribution of values for TimeBodyGyroscope.std...X](codebook_files/figure-latex/cb_codebook_data_TimeBodyGyroscope_std___X_distribution-456-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyGyroscope_std___X_summary}

|name                      |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:-------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|TimeBodyGyroscope.std...X |numeric   |         0|             1|-0.99 |-0.79  |0.27 | -0.6916399| 0.2910189|▇▃▅▁▁ |NA    |




















### TimeBodyGyroscope.std...Y {#TimeBodyGyroscope_std___Y .tabset}



#### Distribution {#TimeBodyGyroscope_std___Y_distribution}

![Distribution of values for TimeBodyGyroscope.std...Y](codebook_files/figure-latex/cb_codebook_data_TimeBodyGyroscope_std___Y_distribution-463-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyGyroscope_std___Y_summary}

|name                      |data_type | n_missing| complete_rate|min   |median |max  |      mean|        sd|hist  |label |
|:-------------------------|:---------|---------:|-------------:|:-----|:------|:----|---------:|---------:|:-----|:-----|
|TimeBodyGyroscope.std...Y |numeric   |         0|             1|-0.99 |-0.8   |0.48 | -0.653302| 0.3520252|▇▅▂▁▁ |NA    |




















### TimeBodyGyroscope.std...Z {#TimeBodyGyroscope_std___Z .tabset}



#### Distribution {#TimeBodyGyroscope_std___Z_distribution}

![Distribution of values for TimeBodyGyroscope.std...Z](codebook_files/figure-latex/cb_codebook_data_TimeBodyGyroscope_std___Z_distribution-470-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyGyroscope_std___Z_summary}

|name                      |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:-------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|TimeBodyGyroscope.std...Z |numeric   |         0|             1|-0.99 |-0.8   |0.56 | -0.6164353| 0.3730264|▇▂▅▁▁ |NA    |




















### TimeBodyGyroscopeJerk.std...X {#TimeBodyGyroscopeJerk_std___X .tabset}



#### Distribution {#TimeBodyGyroscopeJerk_std___X_distribution}

![Distribution of values for TimeBodyGyroscopeJerk.std...X](codebook_files/figure-latex/cb_codebook_data_TimeBodyGyroscopeJerk_std___X_distribution-477-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyGyroscopeJerk_std___X_summary}

|name                          |data_type | n_missing| complete_rate|min |median |max  |       mean|        sd|hist  |label |
|:-----------------------------|:---------|---------:|-------------:|:---|:------|:----|----------:|---------:|:-----|:-----|
|TimeBodyGyroscopeJerk.std...X |numeric   |         0|             1|-1  |-0.84  |0.18 | -0.7036327| 0.3008361|▇▂▃▂▁ |NA    |




















### TimeBodyGyroscopeJerk.std...Y {#TimeBodyGyroscopeJerk_std___Y .tabset}



#### Distribution {#TimeBodyGyroscopeJerk_std___Y_distribution}

![Distribution of values for TimeBodyGyroscopeJerk.std...Y](codebook_files/figure-latex/cb_codebook_data_TimeBodyGyroscopeJerk_std___Y_distribution-484-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyGyroscopeJerk_std___Y_summary}

|name                          |data_type | n_missing| complete_rate|min |median |max |       mean|        sd|hist  |label |
|:-----------------------------|:---------|---------:|-------------:|:---|:------|:---|----------:|---------:|:-----|:-----|
|TimeBodyGyroscopeJerk.std...Y |numeric   |         0|             1|-1  |-0.89  |0.3 | -0.7635518| 0.2672885|▇▃▂▁▁ |NA    |




















### TimeBodyGyroscopeJerk.std...Z {#TimeBodyGyroscopeJerk_std___Z .tabset}



#### Distribution {#TimeBodyGyroscopeJerk_std___Z_distribution}

![Distribution of values for TimeBodyGyroscopeJerk.std...Z](codebook_files/figure-latex/cb_codebook_data_TimeBodyGyroscopeJerk_std___Z_distribution-491-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyGyroscopeJerk_std___Z_summary}

|name                          |data_type | n_missing| complete_rate|min |median |max  |       mean|        sd|hist  |label |
|:-----------------------------|:---------|---------:|-------------:|:---|:------|:----|----------:|---------:|:-----|:-----|
|TimeBodyGyroscopeJerk.std...Z |numeric   |         0|             1|-1  |-0.86  |0.19 | -0.7095592| 0.3045394|▇▃▃▁▁ |NA    |




















### TimeBodyAccelerometerMagnitude.std.. {#TimeBodyAccelerometerMagnitude_std__ .tabset}



#### Distribution {#TimeBodyAccelerometerMagnitude_std___distribution}

![Distribution of values for TimeBodyAccelerometerMagnitude.std..](codebook_files/figure-latex/cb_codebook_data_TimeBodyAccelerometerMagnitude_std___distribution-498-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyAccelerometerMagnitude_std___summary}

|name                                 |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:------------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|TimeBodyAccelerometerMagnitude.std.. |numeric   |         0|             1|-0.99 |-0.61  |0.43 | -0.5439087| 0.4310448|▇▁▅▂▁ |NA    |




















### TimeGravityAccelerometerMagnitude.std.. {#TimeGravityAccelerometerMagnitude_std__ .tabset}



#### Distribution {#TimeGravityAccelerometerMagnitude_std___distribution}

![Distribution of values for TimeGravityAccelerometerMagnitude.std..](codebook_files/figure-latex/cb_codebook_data_TimeGravityAccelerometerMagnitude_std___distribution-505-1.pdf) 

0 missing values.

#### Summary statistics {#TimeGravityAccelerometerMagnitude_std___summary}

|name                                    |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:---------------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|TimeGravityAccelerometerMagnitude.std.. |numeric   |         0|             1|-0.99 |-0.61  |0.43 | -0.5439087| 0.4310448|▇▁▅▂▁ |NA    |




















### TimeBodyAccelerometerJerkMagnitude.std.. {#TimeBodyAccelerometerJerkMagnitude_std__ .tabset}



#### Distribution {#TimeBodyAccelerometerJerkMagnitude_std___distribution}

![Distribution of values for TimeBodyAccelerometerJerkMagnitude.std..](codebook_files/figure-latex/cb_codebook_data_TimeBodyAccelerometerJerkMagnitude_std___distribution-512-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyAccelerometerJerkMagnitude_std___summary}

|name                                     |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:----------------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|TimeBodyAccelerometerJerkMagnitude.std.. |numeric   |         0|             1|-0.99 |-0.8   |0.45 | -0.5841756| 0.4227953|▇▂▃▂▁ |NA    |




















### TimeBodyGyroscopeMagnitude.std.. {#TimeBodyGyroscopeMagnitude_std__ .tabset}



#### Distribution {#TimeBodyGyroscopeMagnitude_std___distribution}

![Distribution of values for TimeBodyGyroscopeMagnitude.std..](codebook_files/figure-latex/cb_codebook_data_TimeBodyGyroscopeMagnitude_std___distribution-519-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyGyroscopeMagnitude_std___summary}

|name                             |data_type | n_missing| complete_rate|min   |median |max |       mean|        sd|hist  |label |
|:--------------------------------|:---------|---------:|-------------:|:-----|:------|:---|----------:|---------:|:-----|:-----|
|TimeBodyGyroscopeMagnitude.std.. |numeric   |         0|             1|-0.98 |-0.74  |0.3 | -0.6303947| 0.3368827|▇▂▅▂▁ |NA    |




















### TimeBodyGyroscopeJerkMagnitude.std.. {#TimeBodyGyroscopeJerkMagnitude_std__ .tabset}



#### Distribution {#TimeBodyGyroscopeJerkMagnitude_std___distribution}

![Distribution of values for TimeBodyGyroscopeJerkMagnitude.std..](codebook_files/figure-latex/cb_codebook_data_TimeBodyGyroscopeJerkMagnitude_std___distribution-526-1.pdf) 

0 missing values.

#### Summary statistics {#TimeBodyGyroscopeJerkMagnitude_std___summary}

|name                                 |data_type | n_missing| complete_rate|min |median |max  |       mean|        sd|hist  |label |
|:------------------------------------|:---------|---------:|-------------:|:---|:------|:----|----------:|---------:|:-----|:-----|
|TimeBodyGyroscopeJerkMagnitude.std.. |numeric   |         0|             1|-1  |-0.88  |0.25 | -0.7550152| 0.2655057|▇▃▂▁▁ |NA    |




















### FrequencyBodyAccelerometer.std...X {#FrequencyBodyAccelerometer_std___X .tabset}



#### Distribution {#FrequencyBodyAccelerometer_std___X_distribution}

![Distribution of values for FrequencyBodyAccelerometer.std...X](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyAccelerometer_std___X_distribution-533-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyAccelerometer_std___X_summary}

|name                               |data_type | n_missing| complete_rate|min |median |max  |       mean|        sd|hist  |label |
|:----------------------------------|:---------|---------:|-------------:|:---|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyAccelerometer.std...X |numeric   |         0|             1|-1  |-0.75  |0.66 | -0.5522011| 0.4600233|▇▂▅▂▁ |NA    |




















### FrequencyBodyAccelerometer.std...Y {#FrequencyBodyAccelerometer_std___Y .tabset}



#### Distribution {#FrequencyBodyAccelerometer_std___Y_distribution}

![Distribution of values for FrequencyBodyAccelerometer.std...Y](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyAccelerometer_std___Y_distribution-540-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyAccelerometer_std___Y_summary}

|name                               |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:----------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyAccelerometer.std...Y |numeric   |         0|             1|-0.99 |-0.51  |0.56 | -0.4814787| 0.4740277|▇▁▅▃▁ |NA    |




















### FrequencyBodyAccelerometer.std...Z {#FrequencyBodyAccelerometer_std___Z .tabset}



#### Distribution {#FrequencyBodyAccelerometer_std___Z_distribution}

![Distribution of values for FrequencyBodyAccelerometer.std...Z](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyAccelerometer_std___Z_distribution-547-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyAccelerometer_std___Z_summary}

|name                               |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:----------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyAccelerometer.std...Z |numeric   |         0|             1|-0.99 |-0.64  |0.69 | -0.5823614| 0.3880902|▇▃▅▁▁ |NA    |




















### FrequencyBodyAccelerometerJerk.std...X {#FrequencyBodyAccelerometerJerk_std___X .tabset}



#### Distribution {#FrequencyBodyAccelerometerJerk_std___X_distribution}

![Distribution of values for FrequencyBodyAccelerometerJerk.std...X](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyAccelerometerJerk_std___X_distribution-554-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyAccelerometerJerk_std___X_summary}

|name                                   |data_type | n_missing| complete_rate|min |median |max  |       mean|        sd|hist  |label |
|:--------------------------------------|:---------|---------:|-------------:|:---|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyAccelerometerJerk.std...X |numeric   |         0|             1|-1  |-0.83  |0.48 | -0.6121033| 0.4004506|▇▂▃▂▁ |NA    |




















### FrequencyBodyAccelerometerJerk.std...Y {#FrequencyBodyAccelerometerJerk_std___Y .tabset}



#### Distribution {#FrequencyBodyAccelerometerJerk_std___Y_distribution}

![Distribution of values for FrequencyBodyAccelerometerJerk.std...Y](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyAccelerometerJerk_std___Y_distribution-561-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyAccelerometerJerk_std___Y_summary}

|name                                   |data_type | n_missing| complete_rate|min   |median |max  |      mean|        sd|hist  |label |
|:--------------------------------------|:---------|---------:|-------------:|:-----|:------|:----|---------:|---------:|:-----|:-----|
|FrequencyBodyAccelerometerJerk.std...Y |numeric   |         0|             1|-0.99 |-0.79  |0.35 | -0.570731| 0.4319873|▇▁▃▃▁ |NA    |




















### FrequencyBodyAccelerometerJerk.std...Z {#FrequencyBodyAccelerometerJerk_std___Z .tabset}



#### Distribution {#FrequencyBodyAccelerometerJerk_std___Z_distribution}

![Distribution of values for FrequencyBodyAccelerometerJerk.std...Z](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyAccelerometerJerk_std___Z_distribution-568-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyAccelerometerJerk_std___Z_summary}

|name                                   |data_type | n_missing| complete_rate|min   |median |max     |       mean|        sd|hist  |label |
|:--------------------------------------|:---------|---------:|-------------:|:-----|:------|:-------|----------:|---------:|:-----|:-----|
|FrequencyBodyAccelerometerJerk.std...Z |numeric   |         0|             1|-0.99 |-0.9   |-0.0062 | -0.7564894| 0.2570577|▇▃▃▁▁ |NA    |




















### FrequencyBodyGyroscope.std...X {#FrequencyBodyGyroscope_std___X .tabset}



#### Distribution {#FrequencyBodyGyroscope_std___X_distribution}

![Distribution of values for FrequencyBodyGyroscope.std...X](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyGyroscope_std___X_distribution-575-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyGyroscope_std___X_summary}

|name                           |data_type | n_missing| complete_rate|min   |median |max |       mean|       sd|hist  |label |
|:------------------------------|:---------|---------:|-------------:|:-----|:------|:---|----------:|--------:|:-----|:-----|
|FrequencyBodyGyroscope.std...X |numeric   |         0|             1|-0.99 |-0.81  |0.2 | -0.7110357| 0.272789|▇▂▅▁▁ |NA    |




















### FrequencyBodyGyroscope.std...Y {#FrequencyBodyGyroscope_std___Y .tabset}



#### Distribution {#FrequencyBodyGyroscope_std___Y_distribution}

![Distribution of values for FrequencyBodyGyroscope.std...Y](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyGyroscope_std___Y_distribution-582-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyGyroscope_std___Y_summary}

|name                           |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyGyroscope.std...Y |numeric   |         0|             1|-0.99 |-0.8   |0.65 | -0.6454334| 0.3634445|▇▅▂▁▁ |NA    |




















### FrequencyBodyGyroscope.std...Z {#FrequencyBodyGyroscope_std___Z .tabset}



#### Distribution {#FrequencyBodyGyroscope_std___Z_distribution}

![Distribution of values for FrequencyBodyGyroscope.std...Z](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyGyroscope_std___Z_distribution-589-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyGyroscope_std___Z_summary}

|name                           |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyGyroscope.std...Z |numeric   |         0|             1|-0.99 |-0.82  |0.52 | -0.6577466| 0.3362014|▇▃▃▁▁ |NA    |




















### FrequencyBodyAccelerometerMagnitude.std.. {#FrequencyBodyAccelerometerMagnitude_std__ .tabset}



#### Distribution {#FrequencyBodyAccelerometerMagnitude_std___distribution}

![Distribution of values for FrequencyBodyAccelerometerMagnitude.std..](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyAccelerometerMagnitude_std___distribution-596-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyAccelerometerMagnitude_std___summary}

|name                                      |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:-----------------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyAccelerometerMagnitude.std.. |numeric   |         0|             1|-0.99 |-0.65  |0.18 | -0.6209633| 0.3529148|▇▁▃▂▁ |NA    |




















### FrequencyBodyAccelerometerJerkMagnitude.std.. {#FrequencyBodyAccelerometerJerkMagnitude_std__ .tabset}



#### Distribution {#FrequencyBodyAccelerometerJerkMagnitude_std___distribution}

![Distribution of values for FrequencyBodyAccelerometerJerkMagnitude.std..](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyAccelerometerJerkMagnitude_std___distribution-603-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyAccelerometerJerkMagnitude_std___summary}

|name                                          |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:---------------------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyAccelerometerJerkMagnitude.std.. |numeric   |         0|             1|-0.99 |-0.81  |0.32 | -0.5991609| 0.4086668|▇▁▃▂▁ |NA    |




















### FrequencyBodyGyroscopeMagnitude.std.. {#FrequencyBodyGyroscopeMagnitude_std__ .tabset}



#### Distribution {#FrequencyBodyGyroscopeMagnitude_std___distribution}

![Distribution of values for FrequencyBodyGyroscopeMagnitude.std..](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyGyroscopeMagnitude_std___distribution-610-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyGyroscopeMagnitude_std___summary}

|name                                  |data_type | n_missing| complete_rate|min   |median |max  |       mean|        sd|hist  |label |
|:-------------------------------------|:---------|---------:|-------------:|:-----|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyGyroscopeMagnitude.std.. |numeric   |         0|             1|-0.98 |-0.77  |0.24 | -0.6723223| 0.2931842|▇▂▅▁▁ |NA    |




















### FrequencyBodyGyroscopeJerkMagnitude.std.. {#FrequencyBodyGyroscopeJerkMagnitude_std__ .tabset}



#### Distribution {#FrequencyBodyGyroscopeJerkMagnitude_std___distribution}

![Distribution of values for FrequencyBodyGyroscopeJerkMagnitude.std..](codebook_files/figure-latex/cb_codebook_data_FrequencyBodyGyroscopeJerkMagnitude_std___distribution-617-1.pdf) 

0 missing values.

#### Summary statistics {#FrequencyBodyGyroscopeJerkMagnitude_std___summary}

|name                                      |data_type | n_missing| complete_rate|min |median |max  |       mean|        sd|hist  |label |
|:-----------------------------------------|:---------|---------:|-------------:|:---|:------|:----|----------:|---------:|:-----|:-----|
|FrequencyBodyGyroscopeJerkMagnitude.std.. |numeric   |         0|             1|-1  |-0.89  |0.29 | -0.7715171| 0.2504248|▇▃▁▁▁ |NA    |


## Missingness report



## Codebook table


|name                                                                                                                 |data_type | n_missing| complete_rate| n_unique| empty|min    |median  |max     |       mean|        sd| whitespace|hist  |label |
|:--------------------------------------------------------------------------------------------------------------------|:---------|---------:|-------------:|--------:|-----:|:------|:-------|:-------|----------:|---------:|----------:|:-----|:-----|
|<a href="#subject">subject</a>                                                                                       |numeric   |         0|             1|       NA|    NA|1.000  |15.5000 |30.0000 | 15.5000000| 8.6795850|         NA|▇▇▇▇▇ |NA    |
|<a href="#Activity">Activity</a>                                                                                     |character |         0|             1|        6|     0|6      |NA      |18      |         NA|        NA|          0|NA    |NA    |
|<a href="#TimeBodyAccelerometer_mean___X">TimeBodyAccelerometer.mean...X</a>                                         |numeric   |         0|             1|       NA|    NA|0.222  |0.2770  |0.3015  |  0.2743027| 0.0121646|         NA|▁▁▂▇▂ |NA    |
|<a href="#TimeBodyAccelerometer_mean___Y">TimeBodyAccelerometer.mean...Y</a>                                         |numeric   |         0|             1|       NA|    NA|-0.041 |-0.0173 |-0.0013 | -0.0178755| 0.0057712|         NA|▁▂▇▇▁ |NA    |
|<a href="#TimeBodyAccelerometer_mean___Z">TimeBodyAccelerometer.mean...Z</a>                                         |numeric   |         0|             1|       NA|    NA|-0.153 |-0.1082 |-0.0754 | -0.1091638| 0.0095820|         NA|▁▁▇▅▁ |NA    |
|<a href="#TimeGravityAccelerometer_mean___X">TimeGravityAccelerometer.mean...X</a>                                   |numeric   |         0|             1|       NA|    NA|-0.680 |0.9208  |0.9745  |  0.6974775| 0.4872534|         NA|▁▁▁▁▇ |NA    |
|<a href="#TimeGravityAccelerometer_mean___Y">TimeGravityAccelerometer.mean...Y</a>                                   |numeric   |         0|             1|       NA|    NA|-0.480 |-0.1278 |0.9566  | -0.0162128| 0.3452376|         NA|▇▇▂▁▂ |NA    |
|<a href="#TimeGravityAccelerometer_mean___Z">TimeGravityAccelerometer.mean...Z</a>                                   |numeric   |         0|             1|       NA|    NA|-0.495 |0.0238  |0.9579  |  0.0741279| 0.2887919|         NA|▂▇▃▁▁ |NA    |
|<a href="#TimeBodyAccelerometerJerk_mean___X">TimeBodyAccelerometerJerk.mean...X</a>                                 |numeric   |         0|             1|       NA|    NA|0.043  |0.0764  |0.1302  |  0.0794736| 0.0125880|         NA|▁▇▃▂▁ |NA    |
|<a href="#TimeBodyAccelerometerJerk_mean___Y">TimeBodyAccelerometerJerk.mean...Y</a>                                 |numeric   |         0|             1|       NA|    NA|-0.039 |0.0095  |0.0568  |  0.0075652| 0.0135764|         NA|▁▃▇▂▁ |NA    |
|<a href="#TimeBodyAccelerometerJerk_mean___Z">TimeBodyAccelerometerJerk.mean...Z</a>                                 |numeric   |         0|             1|       NA|    NA|-0.067 |-0.0039 |0.0381  | -0.0049534| 0.0134621|         NA|▁▁▇▇▁ |NA    |
|<a href="#TimeBodyGyroscope_mean___X">TimeBodyGyroscope.mean...X</a>                                                 |numeric   |         0|             1|       NA|    NA|-0.206 |-0.0287 |0.1927  | -0.0324372| 0.0540518|         NA|▁▂▇▁▁ |NA    |
|<a href="#TimeBodyGyroscope_mean___Y">TimeBodyGyroscope.mean...Y</a>                                                 |numeric   |         0|             1|       NA|    NA|-0.204 |-0.0732 |0.0275  | -0.0742596| 0.0355415|         NA|▁▁▇▃▁ |NA    |
|<a href="#TimeBodyGyroscope_mean___Z">TimeBodyGyroscope.mean...Z</a>                                                 |numeric   |         0|             1|       NA|    NA|-0.072 |0.0851  |0.1791  |  0.0874446| 0.0362125|         NA|▁▁▃▇▂ |NA    |
|<a href="#TimeBodyGyroscopeJerk_mean___X">TimeBodyGyroscopeJerk.mean...X</a>                                         |numeric   |         0|             1|       NA|    NA|-0.157 |-0.0987 |-0.0221 | -0.0960568| 0.0233458|         NA|▁▂▇▁▁ |NA    |
|<a href="#TimeBodyGyroscopeJerk_mean___Y">TimeBodyGyroscopeJerk.mean...Y</a>                                         |numeric   |         0|             1|       NA|    NA|-0.077 |-0.0411 |-0.0132 | -0.0426928| 0.0095320|         NA|▁▂▇▃▁ |NA    |
|<a href="#TimeBodyGyroscopeJerk_mean___Z">TimeBodyGyroscopeJerk.mean...Z</a>                                         |numeric   |         0|             1|       NA|    NA|-0.092 |-0.0534 |-0.0069 | -0.0548019| 0.0123470|         NA|▁▅▇▁▁ |NA    |
|<a href="#TimeBodyAccelerometerMagnitude_mean__">TimeBodyAccelerometerMagnitude.mean..</a>                           |numeric   |         0|             1|       NA|    NA|-0.986 |-0.4829 |0.6446  | -0.4972897| 0.4728834|         NA|▇▁▅▃▁ |NA    |
|<a href="#TimeGravityAccelerometerMagnitude_mean__">TimeGravityAccelerometerMagnitude.mean..</a>                     |numeric   |         0|             1|       NA|    NA|-0.986 |-0.4829 |0.6446  | -0.4972897| 0.4728834|         NA|▇▁▅▃▁ |NA    |
|<a href="#TimeBodyAccelerometerJerkMagnitude_mean__">TimeBodyAccelerometerJerkMagnitude.mean..</a>                   |numeric   |         0|             1|       NA|    NA|-0.993 |-0.8168 |0.4345  | -0.6079296| 0.3965272|         NA|▇▂▅▂▁ |NA    |
|<a href="#TimeBodyGyroscopeMagnitude_mean__">TimeBodyGyroscopeMagnitude.mean..</a>                                   |numeric   |         0|             1|       NA|    NA|-0.981 |-0.6551 |0.4180  | -0.5651631| 0.3977338|         NA|▇▁▅▂▁ |NA    |
|<a href="#TimeBodyGyroscopeJerkMagnitude_mean__">TimeBodyGyroscopeJerkMagnitude.mean..</a>                           |numeric   |         0|             1|       NA|    NA|-0.997 |-0.8648 |0.0876  | -0.7363693| 0.2767541|         NA|▇▃▃▁▁ |NA    |
|<a href="#FrequencyBodyAccelerometer_mean___X">FrequencyBodyAccelerometer.mean...X</a>                               |numeric   |         0|             1|       NA|    NA|-0.995 |-0.7691 |0.5370  | -0.5758000| 0.4300214|         NA|▇▁▃▂▁ |NA    |
|<a href="#FrequencyBodyAccelerometer_mean___Y">FrequencyBodyAccelerometer.mean...Y</a>                               |numeric   |         0|             1|       NA|    NA|-0.989 |-0.5950 |0.5242  | -0.4887327| 0.4806496|         NA|▇▁▃▃▁ |NA    |
|<a href="#FrequencyBodyAccelerometer_mean___Z">FrequencyBodyAccelerometer.mean...Z</a>                               |numeric   |         0|             1|       NA|    NA|-0.989 |-0.7236 |0.2807  | -0.6297388| 0.3556469|         NA|▇▂▅▁▁ |NA    |
|<a href="#FrequencyBodyAccelerometer_meanFreq___X">FrequencyBodyAccelerometer.meanFreq...X</a>                       |numeric   |         0|             1|       NA|    NA|-0.636 |-0.2573 |0.1591  | -0.2322661| 0.1935684|         NA|▂▇▆▆▃ |NA    |
|<a href="#FrequencyBodyAccelerometer_meanFreq___Y">FrequencyBodyAccelerometer.meanFreq...Y</a>                       |numeric   |         0|             1|       NA|    NA|-0.380 |0.0079  |0.4665  |  0.0115289| 0.1447051|         NA|▁▅▇▂▁ |NA    |
|<a href="#FrequencyBodyAccelerometer_meanFreq___Z">FrequencyBodyAccelerometer.meanFreq...Z</a>                       |numeric   |         0|             1|       NA|    NA|-0.520 |0.0658  |0.4025  |  0.0437174| 0.1850113|         NA|▁▂▆▇▃ |NA    |
|<a href="#FrequencyBodyAccelerometerJerk_mean___X">FrequencyBodyAccelerometerJerk.mean...X</a>                       |numeric   |         0|             1|       NA|    NA|-0.995 |-0.8126 |0.4743  | -0.6139282| 0.3982896|         NA|▇▂▃▂▁ |NA    |
|<a href="#FrequencyBodyAccelerometerJerk_mean___Y">FrequencyBodyAccelerometerJerk.mean...Y</a>                       |numeric   |         0|             1|       NA|    NA|-0.989 |-0.7817 |0.2767  | -0.5881631| 0.4077491|         NA|▇▁▃▃▁ |NA    |
|<a href="#FrequencyBodyAccelerometerJerk_mean___Z">FrequencyBodyAccelerometerJerk.mean...Z</a>                       |numeric   |         0|             1|       NA|    NA|-0.992 |-0.8707 |0.1578  | -0.7143585| 0.2970225|         NA|▇▂▃▁▁ |NA    |
|<a href="#FrequencyBodyAccelerometerJerk_meanFreq___X">FrequencyBodyAccelerometerJerk.meanFreq...X</a>               |numeric   |         0|             1|       NA|    NA|-0.576 |-0.0609 |0.3314  | -0.0691018| 0.2541022|         NA|▂▇▂▅▇ |NA    |
|<a href="#FrequencyBodyAccelerometerJerk_meanFreq___Y">FrequencyBodyAccelerometerJerk.meanFreq...Y</a>               |numeric   |         0|             1|       NA|    NA|-0.602 |-0.2321 |0.1957  | -0.2281021| 0.1998647|         NA|▅▇▆▇▃ |NA    |
|<a href="#FrequencyBodyAccelerometerJerk_meanFreq___Z">FrequencyBodyAccelerometerJerk.meanFreq...Z</a>               |numeric   |         0|             1|       NA|    NA|-0.628 |-0.0919 |0.2301  | -0.1376023| 0.2078722|         NA|▂▅▃▇▅ |NA    |
|<a href="#FrequencyBodyGyroscope_mean___X">FrequencyBodyGyroscope.mean...X</a>                                       |numeric   |         0|             1|       NA|    NA|-0.993 |-0.7300 |0.4750  | -0.6367396| 0.3467628|         NA|▇▂▅▁▁ |NA    |
|<a href="#FrequencyBodyGyroscope_mean___Y">FrequencyBodyGyroscope.mean...Y</a>                                       |numeric   |         0|             1|       NA|    NA|-0.994 |-0.8141 |0.3288  | -0.6766868| 0.3319182|         NA|▇▃▃▁▁ |NA    |
|<a href="#FrequencyBodyGyroscope_mean___Z">FrequencyBodyGyroscope.mean...Z</a>                                       |numeric   |         0|             1|       NA|    NA|-0.986 |-0.7909 |0.4924  | -0.6043912| 0.3842603|         NA|▇▂▅▁▁ |NA    |
|<a href="#FrequencyBodyGyroscope_meanFreq___X">FrequencyBodyGyroscope.meanFreq...X</a>                               |numeric   |         0|             1|       NA|    NA|-0.396 |-0.1155 |0.2492  | -0.1045510| 0.1480975|         NA|▃▇▇▅▂ |NA    |
|<a href="#FrequencyBodyGyroscope_meanFreq___Y">FrequencyBodyGyroscope.meanFreq...Y</a>                               |numeric   |         0|             1|       NA|    NA|-0.667 |-0.1579 |0.2731  | -0.1674075| 0.1788011|         NA|▁▅▇▆▂ |NA    |
|<a href="#FrequencyBodyGyroscope_meanFreq___Z">FrequencyBodyGyroscope.meanFreq...Z</a>                               |numeric   |         0|             1|       NA|    NA|-0.507 |-0.0508 |0.3771  | -0.0571809| 0.1652298|         NA|▁▃▇▃▁ |NA    |
|<a href="#FrequencyBodyAccelerometerMagnitude_mean__">FrequencyBodyAccelerometerMagnitude.mean..</a>                 |numeric   |         0|             1|       NA|    NA|-0.987 |-0.6703 |0.5866  | -0.5365167| 0.4516451|         NA|▇▂▃▂▁ |NA    |
|<a href="#FrequencyBodyAccelerometerMagnitude_meanFreq__">FrequencyBodyAccelerometerMagnitude.meanFreq..</a>         |numeric   |         0|             1|       NA|    NA|-0.312 |0.0813  |0.4358  |  0.0761282| 0.1404479|         NA|▁▅▇▅▁ |NA    |
|<a href="#FrequencyBodyAccelerometerJerkMagnitude_mean__">FrequencyBodyAccelerometerJerkMagnitude.mean..</a>         |numeric   |         0|             1|       NA|    NA|-0.994 |-0.7940 |0.5384  | -0.5756175| 0.4312321|         NA|▇▂▃▂▁ |NA    |
|<a href="#FrequencyBodyAccelerometerJerkMagnitude_meanFreq__">FrequencyBodyAccelerometerJerkMagnitude.meanFreq..</a> |numeric   |         0|             1|       NA|    NA|-0.125 |0.1720  |0.4881  |  0.1625459| 0.1378300|         NA|▃▇▇▇▂ |NA    |
|<a href="#FrequencyBodyGyroscopeMagnitude_mean__">FrequencyBodyGyroscopeMagnitude.mean..</a>                         |numeric   |         0|             1|       NA|    NA|-0.987 |-0.7657 |0.2040  | -0.6670991| 0.3181183|         NA|▇▂▃▁▁ |NA    |
|<a href="#FrequencyBodyGyroscopeMagnitude_meanFreq__">FrequencyBodyGyroscopeMagnitude.meanFreq..</a>                 |numeric   |         0|             1|       NA|    NA|-0.457 |-0.0535 |0.4095  | -0.0360322| 0.1807351|         NA|▂▇▇▅▂ |NA    |
|<a href="#FrequencyBodyGyroscopeJerkMagnitude_mean__">FrequencyBodyGyroscopeJerkMagnitude.mean..</a>                 |numeric   |         0|             1|       NA|    NA|-0.998 |-0.8779 |0.1466  | -0.7563853| 0.2628722|         NA|▇▅▂▁▁ |NA    |
|<a href="#FrequencyBodyGyroscopeJerkMagnitude_meanFreq__">FrequencyBodyGyroscopeJerkMagnitude.meanFreq..</a>         |numeric   |         0|             1|       NA|    NA|-0.183 |0.1116  |0.4263  |  0.1259225| 0.1083232|         NA|▁▅▇▆▁ |NA    |
|<a href="#Angle_TimeBodyAccelerometerMean_Gravity_">Angle.TimeBodyAccelerometerMean.Gravity.</a>                     |numeric   |         0|             1|       NA|    NA|-0.163 |0.0079  |0.1292  |  0.0065557| 0.0396044|         NA|▁▁▇▇▁ |NA    |
|<a href="#Angle_TimeBodyAccelerometerJerkMean__GravityMean_">Angle.TimeBodyAccelerometerJerkMean..GravityMean.</a>   |numeric   |         0|             1|       NA|    NA|-0.121 |0.0031  |0.2033  |  0.0006439| 0.0427632|         NA|▂▇▆▁▁ |NA    |
|<a href="#Angle_TimeBodyGyroscopeMean_GravityMean_">Angle.TimeBodyGyroscopeMean.GravityMean.</a>                     |numeric   |         0|             1|       NA|    NA|-0.389 |0.0209  |0.4441  |  0.0219317| 0.1401276|         NA|▁▁▇▁▁ |NA    |
|<a href="#Angle_TimeBodyGyroscopeJerkMean_GravityMean_">Angle.TimeBodyGyroscopeJerkMean.GravityMean.</a>             |numeric   |         0|             1|       NA|    NA|-0.224 |-0.0160 |0.1824  | -0.0113732| 0.0729629|         NA|▁▃▇▅▁ |NA    |
|<a href="#Angle_X_GravityMean_">Angle.X.GravityMean.</a>                                                             |numeric   |         0|             1|       NA|    NA|-0.947 |-0.7377 |0.7378  | -0.5243065| 0.4812280|         NA|▇▂▁▁▂ |NA    |
|<a href="#Angle_Y_GravityMean_">Angle.Y.GravityMean.</a>                                                             |numeric   |         0|             1|       NA|    NA|-0.875 |0.1714  |0.4248  |  0.0786534| 0.2784784|         NA|▁▁▁▅▇ |NA    |
|<a href="#Angle_Z_GravityMean_">Angle.Z.GravityMean.</a>                                                             |numeric   |         0|             1|       NA|    NA|-0.874 |0.0051  |0.3904  | -0.0404362| 0.2308332|         NA|▁▁▁▇▂ |NA    |
|<a href="#TimeBodyAccelerometer_std___X">TimeBodyAccelerometer.std...X</a>                                           |numeric   |         0|             1|       NA|    NA|-0.996 |-0.7526 |0.6269  | -0.5576901| 0.4516911|         NA|▇▂▅▂▁ |NA    |
|<a href="#TimeBodyAccelerometer_std___Y">TimeBodyAccelerometer.std...Y</a>                                           |numeric   |         0|             1|       NA|    NA|-0.990 |-0.5090 |0.6169  | -0.4604626| 0.4965650|         NA|▇▁▅▃▁ |NA    |
|<a href="#TimeBodyAccelerometer_std___Z">TimeBodyAccelerometer.std...Z</a>                                           |numeric   |         0|             1|       NA|    NA|-0.988 |-0.6518 |0.6090  | -0.5755602| 0.3955439|         NA|▇▂▅▁▁ |NA    |
|<a href="#TimeGravityAccelerometer_std___X">TimeGravityAccelerometer.std...X</a>                                     |numeric   |         0|             1|       NA|    NA|-0.997 |-0.9695 |-0.8296 | -0.9637525| 0.0250344|         NA|▇▆▁▁▁ |NA    |
|<a href="#TimeGravityAccelerometer_std___Y">TimeGravityAccelerometer.std...Y</a>                                     |numeric   |         0|             1|       NA|    NA|-0.994 |-0.9590 |-0.6436 | -0.9524296| 0.0326557|         NA|▇▁▁▁▁ |NA    |
|<a href="#TimeGravityAccelerometer_std___Z">TimeGravityAccelerometer.std...Z</a>                                     |numeric   |         0|             1|       NA|    NA|-0.991 |-0.9450 |-0.6102 | -0.9364010| 0.0402912|         NA|▇▂▁▁▁ |NA    |
|<a href="#TimeBodyAccelerometerJerk_std___X">TimeBodyAccelerometerJerk.std...X</a>                                   |numeric   |         0|             1|       NA|    NA|-0.995 |-0.8104 |0.5443  | -0.5949467| 0.4175865|         NA|▇▂▅▂▁ |NA    |
|<a href="#TimeBodyAccelerometerJerk_std___Y">TimeBodyAccelerometerJerk.std...Y</a>                                   |numeric   |         0|             1|       NA|    NA|-0.990 |-0.7756 |0.3553  | -0.5654147| 0.4330871|         NA|▇▁▃▃▁ |NA    |
|<a href="#TimeBodyAccelerometerJerk_std___Z">TimeBodyAccelerometerJerk.std...Z</a>                                   |numeric   |         0|             1|       NA|    NA|-0.993 |-0.8837 |0.0310  | -0.7359577| 0.2768479|         NA|▇▂▃▁▁ |NA    |
|<a href="#TimeBodyGyroscope_std___X">TimeBodyGyroscope.std...X</a>                                                   |numeric   |         0|             1|       NA|    NA|-0.994 |-0.7890 |0.2677  | -0.6916399| 0.2910189|         NA|▇▃▅▁▁ |NA    |
|<a href="#TimeBodyGyroscope_std___Y">TimeBodyGyroscope.std...Y</a>                                                   |numeric   |         0|             1|       NA|    NA|-0.994 |-0.8017 |0.4765  | -0.6533020| 0.3520252|         NA|▇▅▂▁▁ |NA    |
|<a href="#TimeBodyGyroscope_std___Z">TimeBodyGyroscope.std...Z</a>                                                   |numeric   |         0|             1|       NA|    NA|-0.986 |-0.8010 |0.5649  | -0.6164353| 0.3730264|         NA|▇▂▅▁▁ |NA    |
|<a href="#TimeBodyGyroscopeJerk_std___X">TimeBodyGyroscopeJerk.std...X</a>                                           |numeric   |         0|             1|       NA|    NA|-0.997 |-0.8396 |0.1791  | -0.7036327| 0.3008361|         NA|▇▂▃▂▁ |NA    |
|<a href="#TimeBodyGyroscopeJerk_std___Y">TimeBodyGyroscopeJerk.std...Y</a>                                           |numeric   |         0|             1|       NA|    NA|-0.997 |-0.8942 |0.2959  | -0.7635518| 0.2672885|         NA|▇▃▂▁▁ |NA    |
|<a href="#TimeBodyGyroscopeJerk_std___Z">TimeBodyGyroscopeJerk.std...Z</a>                                           |numeric   |         0|             1|       NA|    NA|-0.995 |-0.8610 |0.1932  | -0.7095592| 0.3045394|         NA|▇▃▃▁▁ |NA    |
|<a href="#TimeBodyAccelerometerMagnitude_std__">TimeBodyAccelerometerMagnitude.std..</a>                             |numeric   |         0|             1|       NA|    NA|-0.986 |-0.6074 |0.4284  | -0.5439087| 0.4310448|         NA|▇▁▅▂▁ |NA    |
|<a href="#TimeGravityAccelerometerMagnitude_std__">TimeGravityAccelerometerMagnitude.std..</a>                       |numeric   |         0|             1|       NA|    NA|-0.986 |-0.6074 |0.4284  | -0.5439087| 0.4310448|         NA|▇▁▅▂▁ |NA    |
|<a href="#TimeBodyAccelerometerJerkMagnitude_std__">TimeBodyAccelerometerJerkMagnitude.std..</a>                     |numeric   |         0|             1|       NA|    NA|-0.995 |-0.8014 |0.4506  | -0.5841756| 0.4227953|         NA|▇▂▃▂▁ |NA    |
|<a href="#TimeBodyGyroscopeMagnitude_std__">TimeBodyGyroscopeMagnitude.std..</a>                                     |numeric   |         0|             1|       NA|    NA|-0.981 |-0.7420 |0.3000  | -0.6303947| 0.3368827|         NA|▇▂▅▂▁ |NA    |
|<a href="#TimeBodyGyroscopeJerkMagnitude_std__">TimeBodyGyroscopeJerkMagnitude.std..</a>                             |numeric   |         0|             1|       NA|    NA|-0.998 |-0.8809 |0.2502  | -0.7550152| 0.2655057|         NA|▇▃▂▁▁ |NA    |
|<a href="#FrequencyBodyAccelerometer_std___X">FrequencyBodyAccelerometer.std...X</a>                                 |numeric   |         0|             1|       NA|    NA|-0.997 |-0.7470 |0.6585  | -0.5522011| 0.4600233|         NA|▇▂▅▂▁ |NA    |
|<a href="#FrequencyBodyAccelerometer_std___Y">FrequencyBodyAccelerometer.std...Y</a>                                 |numeric   |         0|             1|       NA|    NA|-0.991 |-0.5134 |0.5602  | -0.4814787| 0.4740277|         NA|▇▁▅▃▁ |NA    |
|<a href="#FrequencyBodyAccelerometer_std___Z">FrequencyBodyAccelerometer.std...Z</a>                                 |numeric   |         0|             1|       NA|    NA|-0.987 |-0.6441 |0.6871  | -0.5823614| 0.3880902|         NA|▇▃▅▁▁ |NA    |
|<a href="#FrequencyBodyAccelerometerJerk_std___X">FrequencyBodyAccelerometerJerk.std...X</a>                         |numeric   |         0|             1|       NA|    NA|-0.995 |-0.8254 |0.4768  | -0.6121033| 0.4004506|         NA|▇▂▃▂▁ |NA    |
|<a href="#FrequencyBodyAccelerometerJerk_std___Y">FrequencyBodyAccelerometerJerk.std...Y</a>                         |numeric   |         0|             1|       NA|    NA|-0.990 |-0.7852 |0.3498  | -0.5707310| 0.4319873|         NA|▇▁▃▃▁ |NA    |
|<a href="#FrequencyBodyAccelerometerJerk_std___Z">FrequencyBodyAccelerometerJerk.std...Z</a>                         |numeric   |         0|             1|       NA|    NA|-0.993 |-0.8951 |-0.0062 | -0.7564894| 0.2570577|         NA|▇▃▃▁▁ |NA    |
|<a href="#FrequencyBodyGyroscope_std___X">FrequencyBodyGyroscope.std...X</a>                                         |numeric   |         0|             1|       NA|    NA|-0.995 |-0.8086 |0.1966  | -0.7110357| 0.2727890|         NA|▇▂▅▁▁ |NA    |
|<a href="#FrequencyBodyGyroscope_std___Y">FrequencyBodyGyroscope.std...Y</a>                                         |numeric   |         0|             1|       NA|    NA|-0.994 |-0.7964 |0.6462  | -0.6454334| 0.3634445|         NA|▇▅▂▁▁ |NA    |
|<a href="#FrequencyBodyGyroscope_std___Z">FrequencyBodyGyroscope.std...Z</a>                                         |numeric   |         0|             1|       NA|    NA|-0.987 |-0.8224 |0.5225  | -0.6577466| 0.3362014|         NA|▇▃▃▁▁ |NA    |
|<a href="#FrequencyBodyAccelerometerMagnitude_std__">FrequencyBodyAccelerometerMagnitude.std..</a>                   |numeric   |         0|             1|       NA|    NA|-0.988 |-0.6513 |0.1787  | -0.6209633| 0.3529148|         NA|▇▁▃▂▁ |NA    |
|<a href="#FrequencyBodyAccelerometerJerkMagnitude_std__">FrequencyBodyAccelerometerJerkMagnitude.std..</a>           |numeric   |         0|             1|       NA|    NA|-0.994 |-0.8126 |0.3163  | -0.5991609| 0.4086668|         NA|▇▁▃▂▁ |NA    |
|<a href="#FrequencyBodyGyroscopeMagnitude_std__">FrequencyBodyGyroscopeMagnitude.std..</a>                           |numeric   |         0|             1|       NA|    NA|-0.981 |-0.7727 |0.2367  | -0.6723223| 0.2931842|         NA|▇▂▅▁▁ |NA    |
|<a href="#FrequencyBodyGyroscopeJerkMagnitude_std__">FrequencyBodyGyroscopeJerkMagnitude.std..</a>                   |numeric   |         0|             1|       NA|    NA|-0.998 |-0.8941 |0.2878  | -0.7715171| 0.2504248|         NA|▇▃▁▁▁ |NA    |


<script type="application/ld+json">
{
  "name": "codebook_data",
  "datePublished": "2020-07-25",
  "description": "The dataset has N=180 rows and 88 columns.\n180 rows have no missing values on any column.\n\n\n## Table of variables\nThis table contains variable names, labels, and number of missing values.\nSee the complete codebook for more.\n\n[truncated]\n\n### Note\nThis dataset was automatically described using the [codebook R package](https://rubenarslan.github.io/codebook/) (version 0.9.2).",
  "keywords": ["subject", "Activity", "TimeBodyAccelerometer.mean...X", "TimeBodyAccelerometer.mean...Y", "TimeBodyAccelerometer.mean...Z", "TimeGravityAccelerometer.mean...X", "TimeGravityAccelerometer.mean...Y", "TimeGravityAccelerometer.mean...Z", "TimeBodyAccelerometerJerk.mean...X", "TimeBodyAccelerometerJerk.mean...Y", "TimeBodyAccelerometerJerk.mean...Z", "TimeBodyGyroscope.mean...X", "TimeBodyGyroscope.mean...Y", "TimeBodyGyroscope.mean...Z", "TimeBodyGyroscopeJerk.mean...X", "TimeBodyGyroscopeJerk.mean...Y", "TimeBodyGyroscopeJerk.mean...Z", "TimeBodyAccelerometerMagnitude.mean..", "TimeGravityAccelerometerMagnitude.mean..", "TimeBodyAccelerometerJerkMagnitude.mean..", "TimeBodyGyroscopeMagnitude.mean..", "TimeBodyGyroscopeJerkMagnitude.mean..", "FrequencyBodyAccelerometer.mean...X", "FrequencyBodyAccelerometer.mean...Y", "FrequencyBodyAccelerometer.mean...Z", "FrequencyBodyAccelerometer.meanFreq...X", "FrequencyBodyAccelerometer.meanFreq...Y", "FrequencyBodyAccelerometer.meanFreq...Z", "FrequencyBodyAccelerometerJerk.mean...X", "FrequencyBodyAccelerometerJerk.mean...Y", "FrequencyBodyAccelerometerJerk.mean...Z", "FrequencyBodyAccelerometerJerk.meanFreq...X", "FrequencyBodyAccelerometerJerk.meanFreq...Y", "FrequencyBodyAccelerometerJerk.meanFreq...Z", "FrequencyBodyGyroscope.mean...X", "FrequencyBodyGyroscope.mean...Y", "FrequencyBodyGyroscope.mean...Z", "FrequencyBodyGyroscope.meanFreq...X", "FrequencyBodyGyroscope.meanFreq...Y", "FrequencyBodyGyroscope.meanFreq...Z", "FrequencyBodyAccelerometerMagnitude.mean..", "FrequencyBodyAccelerometerMagnitude.meanFreq..", "FrequencyBodyAccelerometerJerkMagnitude.mean..", "FrequencyBodyAccelerometerJerkMagnitude.meanFreq..", "FrequencyBodyGyroscopeMagnitude.mean..", "FrequencyBodyGyroscopeMagnitude.meanFreq..", "FrequencyBodyGyroscopeJerkMagnitude.mean..", "FrequencyBodyGyroscopeJerkMagnitude.meanFreq..", "Angle.TimeBodyAccelerometerMean.Gravity.", "Angle.TimeBodyAccelerometerJerkMean..GravityMean.", "Angle.TimeBodyGyroscopeMean.GravityMean.", "Angle.TimeBodyGyroscopeJerkMean.GravityMean.", "Angle.X.GravityMean.", "Angle.Y.GravityMean.", "Angle.Z.GravityMean.", "TimeBodyAccelerometer.std...X", "TimeBodyAccelerometer.std...Y", "TimeBodyAccelerometer.std...Z", "TimeGravityAccelerometer.std...X", "TimeGravityAccelerometer.std...Y", "TimeGravityAccelerometer.std...Z", "TimeBodyAccelerometerJerk.std...X", "TimeBodyAccelerometerJerk.std...Y", "TimeBodyAccelerometerJerk.std...Z", "TimeBodyGyroscope.std...X", "TimeBodyGyroscope.std...Y", "TimeBodyGyroscope.std...Z", "TimeBodyGyroscopeJerk.std...X", "TimeBodyGyroscopeJerk.std...Y", "TimeBodyGyroscopeJerk.std...Z", "TimeBodyAccelerometerMagnitude.std..", "TimeGravityAccelerometerMagnitude.std..", "TimeBodyAccelerometerJerkMagnitude.std..", "TimeBodyGyroscopeMagnitude.std..", "TimeBodyGyroscopeJerkMagnitude.std..", "FrequencyBodyAccelerometer.std...X", "FrequencyBodyAccelerometer.std...Y", "FrequencyBodyAccelerometer.std...Z", "FrequencyBodyAccelerometerJerk.std...X", "FrequencyBodyAccelerometerJerk.std...Y", "FrequencyBodyAccelerometerJerk.std...Z", "FrequencyBodyGyroscope.std...X", "FrequencyBodyGyroscope.std...Y", "FrequencyBodyGyroscope.std...Z", "FrequencyBodyAccelerometerMagnitude.std..", "FrequencyBodyAccelerometerJerkMagnitude.std..", "FrequencyBodyGyroscopeMagnitude.std..", "FrequencyBodyGyroscopeJerkMagnitude.std.."],
  "@context": "http://schema.org/",
  "@type": "Dataset",
  "variableMeasured": [
    {
      "name": "subject",
      "@type": "propertyValue"
    },
    {
      "name": "Activity",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometer.mean...X",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometer.mean...Y",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometer.mean...Z",
      "@type": "propertyValue"
    },
    {
      "name": "TimeGravityAccelerometer.mean...X",
      "@type": "propertyValue"
    },
    {
      "name": "TimeGravityAccelerometer.mean...Y",
      "@type": "propertyValue"
    },
    {
      "name": "TimeGravityAccelerometer.mean...Z",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometerJerk.mean...X",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometerJerk.mean...Y",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometerJerk.mean...Z",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscope.mean...X",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscope.mean...Y",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscope.mean...Z",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscopeJerk.mean...X",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscopeJerk.mean...Y",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscopeJerk.mean...Z",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometerMagnitude.mean..",
      "@type": "propertyValue"
    },
    {
      "name": "TimeGravityAccelerometerMagnitude.mean..",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometerJerkMagnitude.mean..",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscopeMagnitude.mean..",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscopeJerkMagnitude.mean..",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometer.mean...X",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometer.mean...Y",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometer.mean...Z",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometer.meanFreq...X",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometer.meanFreq...Y",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometer.meanFreq...Z",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerJerk.mean...X",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerJerk.mean...Y",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerJerk.mean...Z",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerJerk.meanFreq...X",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerJerk.meanFreq...Y",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerJerk.meanFreq...Z",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscope.mean...X",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscope.mean...Y",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscope.mean...Z",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscope.meanFreq...X",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscope.meanFreq...Y",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscope.meanFreq...Z",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerMagnitude.mean..",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerMagnitude.meanFreq..",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerJerkMagnitude.mean..",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerJerkMagnitude.meanFreq..",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscopeMagnitude.mean..",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscopeMagnitude.meanFreq..",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscopeJerkMagnitude.mean..",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscopeJerkMagnitude.meanFreq..",
      "@type": "propertyValue"
    },
    {
      "name": "Angle.TimeBodyAccelerometerMean.Gravity.",
      "@type": "propertyValue"
    },
    {
      "name": "Angle.TimeBodyAccelerometerJerkMean..GravityMean.",
      "@type": "propertyValue"
    },
    {
      "name": "Angle.TimeBodyGyroscopeMean.GravityMean.",
      "@type": "propertyValue"
    },
    {
      "name": "Angle.TimeBodyGyroscopeJerkMean.GravityMean.",
      "@type": "propertyValue"
    },
    {
      "name": "Angle.X.GravityMean.",
      "@type": "propertyValue"
    },
    {
      "name": "Angle.Y.GravityMean.",
      "@type": "propertyValue"
    },
    {
      "name": "Angle.Z.GravityMean.",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometer.std...X",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometer.std...Y",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometer.std...Z",
      "@type": "propertyValue"
    },
    {
      "name": "TimeGravityAccelerometer.std...X",
      "@type": "propertyValue"
    },
    {
      "name": "TimeGravityAccelerometer.std...Y",
      "@type": "propertyValue"
    },
    {
      "name": "TimeGravityAccelerometer.std...Z",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometerJerk.std...X",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometerJerk.std...Y",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometerJerk.std...Z",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscope.std...X",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscope.std...Y",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscope.std...Z",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscopeJerk.std...X",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscopeJerk.std...Y",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscopeJerk.std...Z",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometerMagnitude.std..",
      "@type": "propertyValue"
    },
    {
      "name": "TimeGravityAccelerometerMagnitude.std..",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometerJerkMagnitude.std..",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscopeMagnitude.std..",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscopeJerkMagnitude.std..",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometer.std...X",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometer.std...Y",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometer.std...Z",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerJerk.std...X",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerJerk.std...Y",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerJerk.std...Z",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscope.std...X",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscope.std...Y",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscope.std...Z",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerMagnitude.std..",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerJerkMagnitude.std..",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscopeMagnitude.std..",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscopeJerkMagnitude.std..",
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
  "datePublished": "2020-07-25",
  "description": "The dataset has N=180 rows and 88 columns.\n180 rows have no missing values on any column.\n\n\n## Table of variables\nThis table contains variable names, labels, and number of missing values.\nSee the complete codebook for more.\n\n[truncated]\n\n### Note\nThis dataset was automatically described using the [codebook R package](https://rubenarslan.github.io/codebook/) (version 0.9.2).",
  "keywords": ["subject", "Activity", "TimeBodyAccelerometer.mean...X", "TimeBodyAccelerometer.mean...Y", "TimeBodyAccelerometer.mean...Z", "TimeGravityAccelerometer.mean...X", "TimeGravityAccelerometer.mean...Y", "TimeGravityAccelerometer.mean...Z", "TimeBodyAccelerometerJerk.mean...X", "TimeBodyAccelerometerJerk.mean...Y", "TimeBodyAccelerometerJerk.mean...Z", "TimeBodyGyroscope.mean...X", "TimeBodyGyroscope.mean...Y", "TimeBodyGyroscope.mean...Z", "TimeBodyGyroscopeJerk.mean...X", "TimeBodyGyroscopeJerk.mean...Y", "TimeBodyGyroscopeJerk.mean...Z", "TimeBodyAccelerometerMagnitude.mean..", "TimeGravityAccelerometerMagnitude.mean..", "TimeBodyAccelerometerJerkMagnitude.mean..", "TimeBodyGyroscopeMagnitude.mean..", "TimeBodyGyroscopeJerkMagnitude.mean..", "FrequencyBodyAccelerometer.mean...X", "FrequencyBodyAccelerometer.mean...Y", "FrequencyBodyAccelerometer.mean...Z", "FrequencyBodyAccelerometer.meanFreq...X", "FrequencyBodyAccelerometer.meanFreq...Y", "FrequencyBodyAccelerometer.meanFreq...Z", "FrequencyBodyAccelerometerJerk.mean...X", "FrequencyBodyAccelerometerJerk.mean...Y", "FrequencyBodyAccelerometerJerk.mean...Z", "FrequencyBodyAccelerometerJerk.meanFreq...X", "FrequencyBodyAccelerometerJerk.meanFreq...Y", "FrequencyBodyAccelerometerJerk.meanFreq...Z", "FrequencyBodyGyroscope.mean...X", "FrequencyBodyGyroscope.mean...Y", "FrequencyBodyGyroscope.mean...Z", "FrequencyBodyGyroscope.meanFreq...X", "FrequencyBodyGyroscope.meanFreq...Y", "FrequencyBodyGyroscope.meanFreq...Z", "FrequencyBodyAccelerometerMagnitude.mean..", "FrequencyBodyAccelerometerMagnitude.meanFreq..", "FrequencyBodyAccelerometerJerkMagnitude.mean..", "FrequencyBodyAccelerometerJerkMagnitude.meanFreq..", "FrequencyBodyGyroscopeMagnitude.mean..", "FrequencyBodyGyroscopeMagnitude.meanFreq..", "FrequencyBodyGyroscopeJerkMagnitude.mean..", "FrequencyBodyGyroscopeJerkMagnitude.meanFreq..", "Angle.TimeBodyAccelerometerMean.Gravity.", "Angle.TimeBodyAccelerometerJerkMean..GravityMean.", "Angle.TimeBodyGyroscopeMean.GravityMean.", "Angle.TimeBodyGyroscopeJerkMean.GravityMean.", "Angle.X.GravityMean.", "Angle.Y.GravityMean.", "Angle.Z.GravityMean.", "TimeBodyAccelerometer.std...X", "TimeBodyAccelerometer.std...Y", "TimeBodyAccelerometer.std...Z", "TimeGravityAccelerometer.std...X", "TimeGravityAccelerometer.std...Y", "TimeGravityAccelerometer.std...Z", "TimeBodyAccelerometerJerk.std...X", "TimeBodyAccelerometerJerk.std...Y", "TimeBodyAccelerometerJerk.std...Z", "TimeBodyGyroscope.std...X", "TimeBodyGyroscope.std...Y", "TimeBodyGyroscope.std...Z", "TimeBodyGyroscopeJerk.std...X", "TimeBodyGyroscopeJerk.std...Y", "TimeBodyGyroscopeJerk.std...Z", "TimeBodyAccelerometerMagnitude.std..", "TimeGravityAccelerometerMagnitude.std..", "TimeBodyAccelerometerJerkMagnitude.std..", "TimeBodyGyroscopeMagnitude.std..", "TimeBodyGyroscopeJerkMagnitude.std..", "FrequencyBodyAccelerometer.std...X", "FrequencyBodyAccelerometer.std...Y", "FrequencyBodyAccelerometer.std...Z", "FrequencyBodyAccelerometerJerk.std...X", "FrequencyBodyAccelerometerJerk.std...Y", "FrequencyBodyAccelerometerJerk.std...Z", "FrequencyBodyGyroscope.std...X", "FrequencyBodyGyroscope.std...Y", "FrequencyBodyGyroscope.std...Z", "FrequencyBodyAccelerometerMagnitude.std..", "FrequencyBodyAccelerometerJerkMagnitude.std..", "FrequencyBodyGyroscopeMagnitude.std..", "FrequencyBodyGyroscopeJerkMagnitude.std.."],
  "@context": "http://schema.org/",
  "@type": "Dataset",
  "variableMeasured": [
    {
      "name": "subject",
      "@type": "propertyValue"
    },
    {
      "name": "Activity",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometer.mean...X",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometer.mean...Y",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometer.mean...Z",
      "@type": "propertyValue"
    },
    {
      "name": "TimeGravityAccelerometer.mean...X",
      "@type": "propertyValue"
    },
    {
      "name": "TimeGravityAccelerometer.mean...Y",
      "@type": "propertyValue"
    },
    {
      "name": "TimeGravityAccelerometer.mean...Z",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometerJerk.mean...X",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometerJerk.mean...Y",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometerJerk.mean...Z",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscope.mean...X",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscope.mean...Y",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscope.mean...Z",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscopeJerk.mean...X",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscopeJerk.mean...Y",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscopeJerk.mean...Z",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometerMagnitude.mean..",
      "@type": "propertyValue"
    },
    {
      "name": "TimeGravityAccelerometerMagnitude.mean..",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometerJerkMagnitude.mean..",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscopeMagnitude.mean..",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscopeJerkMagnitude.mean..",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometer.mean...X",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometer.mean...Y",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometer.mean...Z",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometer.meanFreq...X",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometer.meanFreq...Y",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometer.meanFreq...Z",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerJerk.mean...X",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerJerk.mean...Y",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerJerk.mean...Z",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerJerk.meanFreq...X",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerJerk.meanFreq...Y",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerJerk.meanFreq...Z",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscope.mean...X",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscope.mean...Y",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscope.mean...Z",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscope.meanFreq...X",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscope.meanFreq...Y",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscope.meanFreq...Z",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerMagnitude.mean..",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerMagnitude.meanFreq..",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerJerkMagnitude.mean..",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerJerkMagnitude.meanFreq..",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscopeMagnitude.mean..",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscopeMagnitude.meanFreq..",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscopeJerkMagnitude.mean..",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscopeJerkMagnitude.meanFreq..",
      "@type": "propertyValue"
    },
    {
      "name": "Angle.TimeBodyAccelerometerMean.Gravity.",
      "@type": "propertyValue"
    },
    {
      "name": "Angle.TimeBodyAccelerometerJerkMean..GravityMean.",
      "@type": "propertyValue"
    },
    {
      "name": "Angle.TimeBodyGyroscopeMean.GravityMean.",
      "@type": "propertyValue"
    },
    {
      "name": "Angle.TimeBodyGyroscopeJerkMean.GravityMean.",
      "@type": "propertyValue"
    },
    {
      "name": "Angle.X.GravityMean.",
      "@type": "propertyValue"
    },
    {
      "name": "Angle.Y.GravityMean.",
      "@type": "propertyValue"
    },
    {
      "name": "Angle.Z.GravityMean.",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometer.std...X",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometer.std...Y",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometer.std...Z",
      "@type": "propertyValue"
    },
    {
      "name": "TimeGravityAccelerometer.std...X",
      "@type": "propertyValue"
    },
    {
      "name": "TimeGravityAccelerometer.std...Y",
      "@type": "propertyValue"
    },
    {
      "name": "TimeGravityAccelerometer.std...Z",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometerJerk.std...X",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometerJerk.std...Y",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometerJerk.std...Z",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscope.std...X",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscope.std...Y",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscope.std...Z",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscopeJerk.std...X",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscopeJerk.std...Y",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscopeJerk.std...Z",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometerMagnitude.std..",
      "@type": "propertyValue"
    },
    {
      "name": "TimeGravityAccelerometerMagnitude.std..",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyAccelerometerJerkMagnitude.std..",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscopeMagnitude.std..",
      "@type": "propertyValue"
    },
    {
      "name": "TimeBodyGyroscopeJerkMagnitude.std..",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometer.std...X",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometer.std...Y",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometer.std...Z",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerJerk.std...X",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerJerk.std...Y",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerJerk.std...Z",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscope.std...X",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscope.std...Y",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscope.std...Z",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerMagnitude.std..",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyAccelerometerJerkMagnitude.std..",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscopeMagnitude.std..",
      "@type": "propertyValue"
    },
    {
      "name": "FrequencyBodyGyroscopeJerkMagnitude.std..",
      "@type": "propertyValue"
    }
  ]
}`
```
</details>
