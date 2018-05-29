Function Get-Triangle
{

Param(
    [Parameter(Mandatory=$True)]
    [ValidateSet("Sin",'Cos','Tan','Cot','Sec','Csc')]
    $TrigFunction,

    [Parameter(Mandatory=$True)]
    [int]$Numerator,

    [Parameter(Mandatory=$False)]
    [int]$Denominator=1
)

switch ($TrigFunction)
{
    'Sin' {$Opposite = $Numerator; $Hypotenuse = $Denominator; $Adjacent = [Math]::Sqrt( [Math]::Pow($Hypotenuse,2) - [Math]::Pow($Opposite,2) )}
    'Cos' {$Adjacent = $Numerator; $Hypotenuse = $Denominator; $Opposite = [Math]::Sqrt( [Math]::Pow($Hypotenuse,2) - [Math]::Pow($Adjacent,2))}
    'Tan' {$Opposite = $Numerator; $Adjacent = $Denominator; $Hypotenuse = [Math]::Sqrt( [Math]::Pow($Adjacent,2) + [Math]::Pow($Opposite,2) )}
    'Csc' {}
    'Sec' {}
    'Cot' {}


    Default {}
}

Write-Host -Object "$TrigFunction = $($Numerator/$Denominator)"
Write-Host -Object "Adjacent: $([Math]::Round($Adjacent,4)) | sqrt($([Math]::Pow($Adjacent,2)))"
Write-Host -Object "Opposite: $([Math]::Round($Opposite,4)) | sqrt($([Math]::Pow($Opposite,2)))"
Write-Host -Object "Hypotenuse: $([Math]::Round($Hypotenuse,4)) | sqrt($([Math]::Pow($Hypotenuse,2)))"
Write-Host -Object "`n"

}