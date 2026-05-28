$java = 'C:\Program Files\Weka-3-8-6\jre\zulu17.32.13-ca-fx-jre17.0.2-win_x64\bin\java.exe'
$weka = 'C:\Program Files\Weka-3-8-6\weka.jar'
$data = 'C:\Users\rujul\OneDrive\Documents\New project\weka_fitness_decision_mining\weka_decision_mining_dataset.arff'

Write-Host 'Running J48 decision tree...'
& $java -cp $weka weka.classifiers.trees.J48 -t $data -x 10

Write-Host 'Running RandomForest benchmark...'
& $java -cp $weka weka.classifiers.trees.RandomForest -t $data -x 10 -I 100 -K 0 -S 1
