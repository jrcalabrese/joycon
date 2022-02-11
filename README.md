# joycon <img src="man/figures/hexsticker.png" align="right" width="150" /> 

> Color palettes inspired by Nintendo.

## Install package

``` r
devtools::install_github("jrcalabrese/joycon")
library(joycon)
```

## Introduction

The **joycon** package provides over 40 color palettes inspired by Nintendo video games, including Super Mario, the Legend of Zelda, and Animal Crossing. 

I included a bunch of games, but if I missed one, feel free to DM me on Twitter `@jrosecalabrese` and I'll try to add it. 

Hexsticker created with [Emi Tanaka's PowerPoint template](https://emitanaka.org/posts/hexsticker/). 

## Color palettes

``` r
joycon_pal("NewHorizons")
```

<p float="left">
  <img src="man/figures/newhorizons_actual.png" height="200" />
  <img src="man/figures/newhorizons.png" height="200" /> 
</p>

``` r
joycon_pal("Hyrule")
```

<p float="left">
  <img src="man/figures/hyrule_actual.png" height="200"> 
  <img src="man/figures/hyrule.png" height="200"> 
</p>

``` r
joycon_pal("Splatoon")
joycon_pal("WiiFit")
joycon_pal("Nintendogs")
```

<img src="man/figures/splatoon.png" width="250"> <img src="man/figures/wiifit.png" width="250"> <img src="man/figures/nintendogs.png" width="250"> 

``` r
joycon_pal("TwilightPrincess")
joycon_pal("Xenoblade")
joycon_pal("KidIcarus")
```

<img src="man/figures/twilightprincess.png" width="250"> <img src="man/figures/xenoblade.png" width="250"> <img src="man/figures/kidicarus.png" width="250"> 

## Example visualizations

``` r
library(ggplot2)
ggplot(diamonds, aes(x = cut, y = price, fill = cut)) + 
  geom_boxplot() + 
  scale_y_log10() + 
  scale_fill_manual(values = joycon_pal("Isabelle")) +
  ggtitle("Isabelle palette")
```

![](man/figures/isabelle_viz.png)

``` r 
ggplot(diamonds, aes(x = cut, fill = cut)) + 
  geom_bar(stat = "count") +
  scale_fill_manual(values = joycon_pal(name = "SkywardSword") +
  ggtitle("Skyward Sword palette")
```

![](man/figures/skywardsword_viz.png)

``` r
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width))+
  geom_point(aes(color = Sepal.Length), size = 5) + 
  scale_color_gradientn(colors = joycon_pal("AceAttorney", type = "continuous")) +
  ggtitle("Ace Attorney palette") +
  labs(caption = "(Yes, I know Ace Attorney is developed by Capcom)")
```

![](man/figures/aceattorney_viz.png)
