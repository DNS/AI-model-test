
$question = '3 apples divided equally to 5 people, how much apple every person get?'

$model = @('llama3.1:8b', 'tinyllama:1.1b', 'phi3:3.8b', 'qwen2:1.5b', 'qwen2:0.5b')

foreach ($m in $model) {
	"---------------------------`n`nModel: $m`n"
	$r = $m -replace ':', ' '
	$question | ollama run $m --verbose
}





