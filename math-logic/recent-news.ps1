$models = @(
'qwen3.5:9b'		# llm score 32, 39.84 tokens/s, jokowi
'gemma4:e4b'		# llm score 29, 41.89 tokens/s, prabowo ✅
'gpt-oss:20b'		# llm score 21, 52.54 tokens/s, jokowi
'llama3.1:8b'		# llm score 6, 47.23 tokens/s, jokowi
)

$question = "Give very brief answer. Who is the current president of Indonesia?"
	
	
$models | % { 
	$_
    $question | ollama --verbose run $_ 
}


