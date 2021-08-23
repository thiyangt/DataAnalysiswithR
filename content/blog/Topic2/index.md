---
title: "2. Install R packages"
date: 2021-08-20T11:40:14+02:00
publishdate: 2021-08-20T12:40:14+02:00
tags: ["R", "RStudio", "Rpackages"]
comments: false
---


Now you have successfully installed R and R studio as give in [1. Install R and RStudio](https://r4fun.netlify.app/blog/topic1/).

*Note: Without completing Step 1 ([1. Install R and RStudio](https://r4fun.netlify.app/blog/topic1/)) you will not be able to follow the steps given below.*


> ### Help 
> Step-by-step illustration video clip of the below steps is ALSO available at https://www.youtube.com/watch?v=7nzsW-lhb14


# Installing an R Package

<!--- The primary location for obtaining R packages is CRAN. -->


<!--- In order to install packages after R and Rstudio are installed, you will need either Administrative Access to your machine or a personal library on your desktop where you can install pakcages on the fly.-->

- To install an R package from CRAN, follow the steps given below.


**The following steps demonstrate how to install `tidyverse` package from CRAN.**

## Step 1

- Open RStudio.

- Before moving to Step 2, **make sure your computer is connected to the Internet.**

## Step 2

- Find “Files/Plot/Packges/Help” window: By default the “Files/Plot/Packges/Help” window will be on the right side of RStudio. Find that window. 

- Select "Packages" tab  and then click on "Install". It will look something like this:

![](/images/Rpackages/1_console.png)


## Step 3

1. Type `tidyverse` under "Packages".  (Note : R names are case-sensitive. Use simple English letters for this package name).

2. Make sure **"Install dependencies"** is checked.

3. Click "Install".

![](/images/Rpackages/2_tidyverse.png)


*Extra:*

`If you get the following message during the installation`

`"Do you want to install from sources the package which needs compilation? (Yes/no/cancel)"`

`Just type “No” at the end of the line and hit Enter!`

   - This step  downloads the `tidyverse` package from CRAN and installs it on your computer.

   - Any packages on which this package depends will also be downloaded and installed.
   
   - Installing the `tidyverse` package could take several minutes. **You only need to do this once.**

3. Successful installation  should return  a message similar to below in the console. (Sometimes your screen output mesage will probably look different and lengthy, if you install this for the first time!! However, it should not be an ERROR message). 

![](/images/Rpackages/3_tidyverse.png)


# Step 4

The core set of packages we will need for the workshop are as follows. There may be a few more we need to install during the course, but these are the core packages we need. 

```
tidyverse
rmarkdown
knitr
here
palmerpenguins

```

Repeat from `Step 2` to `Step 3` to install the above five R packages. (eg. The next package you can install is `rmarkdown`, then `knitr` and so on. The order of installation of the above five packages is not important.) 


## Step 5: Quick Test!

- Just to make sure each package installed successfully, do the following:

   1. Go to the "Console"

   2. In the “Console”, find the R command Prompt (the part that starts with `>`)

   3. Type in (or copy and paste from here will also work) the following command at the R Prompt and hit return

```{r}
# check that these packages are installed successfully:
c("tidyverse", "rmarkdown", "knitr", "here", "palmerpenguins") %in% 
installed.packages()

```

If you have successfully installed packages, you should see a list of “TRUE” repeated once for each package listed inside the c( ), as below:

![](/images/Rpackages/4_check.png)



> ### Help 
> Step-by-step illustration video clip of the above steps is also available at https://www.youtube.com/watch?v=7nzsW-lhb14






### If you have completed up to this point, Congratulations!!. Now you are ready for the workshop!!!


The following steps are **Optional** and will be discussed in detail, during the workshop.


# Loading an R Packages

- Installing a package does not make it immediately available to you in R.

- In order to use a package, you must load it into your current workspace.

- The `library()` function is used to load packages into R.

- The following code is used to load the `tidyverse` package into R

- Type the following into your Console and press Enter:

- **NOTE: Do not put the package name in quotes!**

```{r}
library(tidyverse)
```

- Now your package is loaded, and ready to use. 

- Some packages produce messages when they are loaded (but some don’t).

![](/images/Rpackages/5_load.png)



**General rule of thumb: Load packages once per session, install packages once per computer or R version!**

# Quick Activity


Type the following into your Console and press Enter to load and work with `palmerpenguins` package.
 
```{r}
library(palmerpenguins)
data(penguins)
str(penguins)
head(penguins)

```