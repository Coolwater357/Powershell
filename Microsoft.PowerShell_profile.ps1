#set-alias vim "C:/Program Files (x86)/Vim/Vim74/vim.exe"
#set-alias gvim "C:/Program Files (x86)/Vim/Vim74/gvim.exe"

# To edit the Powershell Profile
# (Not that I'll remember this)
Function Edit-Profile
{
  vim $profile
}

# To edit Vim settings
Function Edit-Vimrc
{
  vim $HOME\_vimrc
}

$MaximumHistoryCount = 150
# invoke-History 3
#  - or use alias "r" -
# r 3
function prompt
{
  $host.UI.RawUI.WindowTitle = Get-Location
  $nowIsoTime = get-date -format s
  $cmdCnt = get-history -count 1 | select -expand Id
  if ($cmdCnt -eq "")
  {
    $cmdCnt = 1
  }
  else
  {
    $cmdCnt++
  }
  $prmt = [string]::Format("PS {0} {1}> ", $nowIsoTime, $cmdCnt)
  return "$prmt"
}

