# Convert-Unicode
Given a character or string, Convert-Unicode will return the Unicode number(s) of each character. Given a number, it will return the corresponding Unicode/ASCII character. Given a range of numbers, it will return the corresponding Unicode/ASCII characters for that range. Convert-Unicode will also provide specific PowerShell code examples for each character.

    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Convert-Unicode -UnicodeNumber 169
    
    Character UnicodeNumber CodeExample         
     --------- ------------- -----------         
             ©           169 $x = [char]169 # "©"
    
    -------------------------- EXAMPLE 2 --------------------------
    
    PS C:\>Convert-Unicode -Range (105..107)
    
    Character UnicodeNumber CodeExample         
    --------- ------------- -----------         
            i           105 $x = [char]105 # "i"
            j           106 $x = [char]106 # "j"
            k           107 $x = [char]107 # "k"
    
    
    -------------------------- EXAMPLE 3 --------------------------
    
    PS C:\>Convert-Unicode -String "abc"
    
    Character UnicodeNumber CodeExample        
    --------- ------------- -----------        
            a            97 $x = [char]97 # "a"
            b            98 $x = [char]98 # "b"
            c            99 $x = [char]99 # "c"
