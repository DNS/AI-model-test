
#$model = @('llama3.1:8b', 'tinyllama:1.1b', 'phi3:3.8b', 'qwen2:1.5b', 'qwen2:0.5b')
$model = @('qwen2:1.5b', 'qwen2:0.5b')

foreach ($m in $model) {
	"---------------------------`n`nModel: $m`n"
	$r = $m -replace ':', ' '
	gc story-basic-1.txt | ollama run $m --verbose | Out-File "out\$r.txt"
}



