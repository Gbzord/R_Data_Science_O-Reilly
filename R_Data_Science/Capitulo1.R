#library(ggplot2)

#head(mpg)

###Colocar displ (Tamanho do motor) no eixo x e hwy (Eficiência do combustível) no eixo y


##Mapeando com alpha

#ggplot(data = mpg) + 
#geom_point(mapping = aes(x = displ , y = hwy , color = class , alpha = class))

##Mapeando com shape

#ggplot(data = mpg) + 
#geom_point(mapping = aes(x = displ , y = hwy , color = class , shape = class))


###Facetas

##Facetas combinando 1 váriavel

#ggplot(data = mpg) +
#geom_point(mapping = aes(x = displ , y = hwy)) +
#facet_wrap(~ class , nrow = 2)


##Facetas combinando 2 váriaveis

#ggplot(data = mpg) +
#geom_point(mapping = aes(x = displ , y = hwy)) +
#facet_wrap(drv ~ cyl)


### Objetos Gráficos

##geom -> objeto gráfico que o gráfico usa para representar dados

#ggplot(data = mpg) + 
#geom_smooth(mapping = aes(x = displ , y = hwy))

### Adicionando linetype

#ggplot(data = mpg) + 
#geom_smooth(mapping = aes(x = displ , y = hwy , linetype = drv))

### Mapeamentos globais em sobreposição de gráficos

## Class de automoveis por cor + Tipo de transmissão (4 , dianteira (f) , traseira (r)) por linha

#ggplot(data = mpg , mapping = aes (x = displ , y = hwy , linetype = drv)) + 
#geom_point(mapping = aes(color = class)) +
#geom_smooth()

## Desconsiderando argmentos globais com filter()

#ggplot(data = mpg , mapping = aes(x = displ , y = hwy))+
#geom_point(mapping = aes(color = class))+
#geom_smooth(
#data = filter(mpg , class == "subcompact"),
#se = FALSE
#)



head(diamonds)

### Transformções Estatisticas

##Gráfico em Barra
#ggplot(data = diamonds)+
#geom_bar(mapping = aes(x = cut ))

##Recriando com stat_count()

#ggplot(data = diamonds)+
#stat_count(mapping = aes( x = cut))

## Sobrescrever o stat padrão

#demo <- tribble(
# ~a,    ~b,
#"bar_1", 20,
#"bar_2", 30,
#"bar_3", 40
#)

#ggplot(data = diamonds)+
#geom_bar(mapping = aes(x = a , y = b), stat = 'identity')

## prop (proporção) ao invés de count

#ggplot(data = diamonds)+
#geom_bar(mapping = aes(x=cut , y = ..prop..,group = 1))

## stat_summary : resume valores de y para cada x

#ggplot(data = diamonds) +
#stat_summary( 
#mapping = aes(x = cut , y = depth),
#fun.ymin =min,
#fun.ymax = max,
#fun.y = median)


