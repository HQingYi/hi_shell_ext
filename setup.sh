install(){
    set_path_script="export PATH=\$PATH:`pwd`/bin"
    if [ -e ~/.zshrc ]; then
        zsh_installed=`grep \`pwd\`/bin ~/.zshrc | grep "PATH=" | wc -l`
        if [ $zsh_installed -eq 0 ]; then
            echo $set_path_script >> ~/.zshrc
            echo "[~/.zshrc]finish installed."
        else
            echo "[~/.zshrc]already installed."
        fi
    fi
}

install