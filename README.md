# joycon

> Color palettes inspired by Nintendo.

![](example_images/joycon_hexsticker.png)

Hex sticker created with [Emi Tanaka's PowerPoint template](https://emitanaka.org/posts/hexsticker/). 

## Install package

``` r
install.packages("devtools")
devtools::install_github("jrcalabrese/joycon")
library(joycon)
```

## Color palettes

``` r
pie(rep(1, 5), col = joycon_palettes$newhorizons, labels = NA)
```

<p img="middle">
<img src="example_images/newhorizons_actual.png" width="300"> 
<img src="example_images/newhorizons.png" width="300"> 
</p>

``` r
pie(rep(1, 8), col = joycon_palettes$hyrule, labels = NA)
```

<p img="middle">
<img src="example_images/hyrule_actual.png" width="300"> 
<img src="example_images/hyrule.png" width="300"> 
</p>

``` r
pie(rep(1, 5), col = joycon_palettes$splatoon, labels = NA)
pie(rep(1, 8), col = joycon_palettes$korok, labels = NA)
pie(rep(1, 5), col = joycon_palettes$starbits, labels = NA)
```

<img src="example_images/splatoon.png" width="200"> <img src="example_images/korok.png" width="200"> <img src="example_images/starbits.png" width="200"> 

## Example visualizations

``` r
library(ggplot2)
ggplot(mtcars, aes(x = mpg)) +
  geom_density(aes(fill = factor(gear)), alpha=0.8) +
  scale_fill_manual(values = joycon_pal("splatoon")) +
  ggtitle(("Splatoon palette"))
```

![](example_images/splatoon_viz.png)

``` r 
ggplot(iris, aes(x = Sepal.Length, fill = Species)) + 
  geom_histogram(bins = 30) +
  scale_fill_manual(values = joycon_pal(name = "skywardsword")) +
  ggtitle("Skyward Sword palette")
```

![](example_images/skywardsword_viz.png)
