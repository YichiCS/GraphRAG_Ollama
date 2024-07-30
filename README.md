# GraphRAG_Ollama
The GraphRAG supports Ollama Model. Check `./_graph/hackfile` and `./_graph/settings` for hack detail. There may exist some problems when runing Local Search, will be solved in following updates.

You can run commands below 

```
EXP_NAME='test'

bash ./_sh/init.sh $EXP_NAME

bash ./_sh/index.sh $EXP_NAME

bash ./_sh/query.sh $EXP_NAME $MODE 
# MODE should be global or local, modify query in ./_sh/query.sh

bash ./_sh/visual.sh $PATH 
# PATH to the file saving the target file, e.g, ./_experiments/test/output/20240729-220215
```