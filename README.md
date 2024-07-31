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


_Update 2024/7/31_: You may have trouble when running local or global search when using Ollama model as the default context size is `2048`. To avoid useless RAG action, you are suppose to modify the `num_ctx` of your model.
```
ollama show mistral --modelfile > mymodel.modelfile
# add `PARAMETER num_ctx 8192` to the `mymodel.modelfile`, 8192 for example.

ollama create mymodel -f mymodel.modelfile
```
After setting the `llm.model` in `settings`, you can use a larger context window LLM for local/global search now, enjoy it.