
$question = 'if bob borrow $100 from jordan with interest rate of 10 percent (continuously compounded). how much money bob owe to jordan after 10 years?'

$model = @('llama3.1:8b', 'tinyllama:1.1b', 'phi3:3.8b', 'qwen2:1.5b', 'qwen2:0.5b')

foreach ($m in $model) {
	"---------------------------`n`nModel: $m`n"
	$r = $m -replace ':', ' '
	$question | ollama run $m --verbose
}



