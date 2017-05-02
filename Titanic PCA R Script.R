# Generate and export PCA Loadings, Scores, and PC Explained Variance for the Iris Dataset
titanic = titanic = read.csv('C:/Users/nmannheimer/Desktop/titanic.csv')
attach(titanic)
row.names(titanic) = Name
titanic = titanic[c('Survived','Pclass','Sex', 'Age', 'Fare')]
pr.titanic = prcomp(titanic, scale=TRUE)
biplot(pr.titanic)
pr.titanic$x
pr.titanic$rotation
var = pr.titanic$sdev^2
pve = var/sum(var)
write.csv(pr.titanic$rotation, 'TitanicLoadings.csv')
write.csv(pr.titanic$x, 'Titanic PCA.csv')
write.csv(pve, 'Titanic Variance Explained.csv')