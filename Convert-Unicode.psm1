<#
.Synopsis
   Convert between Unicode characters and numbers.
.DESCRIPTION
   Given a character or string, Convert-Unicode will return the Unicode number(s). Given a number, it will return the corresponding Unicode/ASCII character. Given a range of numbers, it will return the corresponding Unicode/ASCII characters for that range.
   Convert-Unicode will also provide specific PowerShell code examples for each character.
.EXAMPLE
   PS C:\>Convert-Unicode -UnicodeNumber 169
    
    Character UnicodeNumber CodeExample         
    --------- ------------- -----------         
            ©           169 $x = [char]169 # "©"
.EXAMPLE
   PS C:\>Convert-Unicode -Range (105..107)

   Character UnicodeNumber CodeExample         
   --------- ------------- -----------         
           i           105 $x = [char]105 # "i"
           j           106 $x = [char]106 # "j"
           k           107 $x = [char]107 # "k"
#>
function Convert-Unicode 
{
    [CmdletBinding()]
    Param([string]$String, [int]$UnicodeNumber, [int[]]$Range)

    if ($UnicodeNumber) {$String = [string][char]$UnicodeNumber}
    if ($Range) {$String = -join ($Range | foreach {[char]$_})}

    foreach ($c in ($String.ToCharArray()))
    {
        if ($null -ne $c) 
        {
            [PSCustomObject]@{
                Character      = [char]$c
                UnicodeNumber  = [int][char]$c
                CodeExample    = "`$x = [char]" + [int][char]$c + " # " + $Quote + [char]$c + $Quote
            }
        }
    }
}
