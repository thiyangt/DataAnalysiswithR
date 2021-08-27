---
title: "3. Data"
date: 2021-08-19T11:40:14+02:00
publishdate: 2021-08-19T11:40:14+02:00
tags: ["penguins", "data"]
comments: false
---

In this workshop we will use [palmerpenguins dataset](https://allisonhorst.github.io/palmerpenguins/articles/intro.html) to get a better understanding of the concepts of
exploration, visualization, and potential analyses. The Palmer penguins dataset by [Allison Horst, Alison Hill, and Kristen Gorman was first made publicly available as an R package](https://education.rstudio.com/blog/2020/07/palmerpenguins-cran/). 

The goal of palmerpenguins is to provide a great dataset for data exploration & visualization.


The palmerpenguins data contains size measurements, clutch observations, and blood isotope ratios for three penguin species observed on three islands in the Palmer Archipelago, Antarctica over a study period of three years.

```{r}
library(palmerpenguins)
data(penguins)
str(penguins)
head(penguins)
```



