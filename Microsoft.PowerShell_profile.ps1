Write-Host ------------------------------------
Write-Host ProfilePath "$PSScriptRoot"
Write-Host ------------------------------------
# For Windows
#Set-StrictMode -Version 7.0

# Home directory
cd $home\Desktop

# Custom Prompt
function prompt { "`r`n[$(Get-Location)\]`r`n$("+"*(Get-Location -Stack).Count)>" }

# My Functions

# My alias


##########################
#peco
##########################
#pcd
$editor = "vim"

function pcd {
    $pcdlist = "~/.pcd"
    
    function pcdAdd($p) {
        switch($p) {
                "." {
                        $pwd.path >> $pcdlist
                }
                default {
                        $p >> $pcdlist
                }
        }
    }
    switch($args[0]) {
            "add" {
                    pcdAdd($args[1])
            }
            "edit" {
                    Invoke-Expression "$editor $pcdlist"
            }
            default {
                    $path = $null
                    $path = $(cat $pcdlist | peco)
                    if($path -ne $null){cd $path}
                    else{clear}
            }
    }
}

#phist
function phist{
  $cmd = $null
  $cmd = $(cat (Get-PSReadlineOption).HistorySavePath | peco)
  if($cmd -ne $null){Invoke-Expression $cmd}
  else{clear}
}

#pbuff
function pbuff{
  $pbufflist = "~/.pbuff"
  
  switch($args[0]){
    "add"{
      if($args[1] -ne $null) {$args[1] >>$pbufflist}
	}
	"edit"{
      Invoke-Expression "$editor $pbufflist"
	}
    "delete"{
	  Clear-Content $pbufflist
	}
	default{
	  $pbuff = $null
	  $pbuff = $(cat $pbufflist | peco)
	  if($pbuff -ne $null){$pbuff | Set-Clipboard}
	  else{clear}
	}
  }
  
}

###########################
