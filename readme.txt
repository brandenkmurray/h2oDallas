1. Clone repo  
2. Move train.csv and test.csv into your local repo directory  
3. Make sure all packages in packages.R are installed  
4. Run data_trans_31.R
  1. For time purposes, the default is set to sample 5000 rows from the train and test set. If you change the default then you will need to uncomment the PAIRWISE CORRELATIONS section before running.
  2. If you have less than 16GB RAM then you should either sample less data or change the ‘threads’ argument to a lower number (1 or 2). This will save memory.  
5. Run layer1_xgb46.R  
