# Vim

## install

+ unix

```Shell
git clone https://github.com/fengleyl/vim.git ~/.vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

+ windows(powershell)

```Shell
git clone https://github.com/fengleyl/vim.git ~/vimfiles

md ~\vimfiles\autoload
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "~\vimfiles\autoload\plug.vim"
  )
)
```

## plugin

1. install `python` or `python3`

2. pip install `flask8`, `autopep8`

3. install `ag`

