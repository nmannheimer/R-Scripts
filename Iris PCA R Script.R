# Generate and export PCA Loadings, Scores, and PC Explained Variance for the Iris Dataset
flowers = iris
flowers
attach(flowers)
row.names(flowers) = paste(Species, row.names(flowers))
flowers
flowers = flowers[c('Petal.Width','Petal.Length', 'Sepal.Width', 'Sepal.Length')]
flowers
pr.flowers = prcomp(flowers, scale=TRUE)
pr.flowers
biplot(pr.flowers)
pr.flowers$x
pr.flowers$rotation
var = pr.flowers$sdev^2
pve = var/sum(var)
pve
write.csv(pr.flowers$rotation, 'Loadings.csv')
write.csv(pr.flowers$x, 'PCA Scores.csv')
write.csv(pve, 'Explained Variance PCA.csv')