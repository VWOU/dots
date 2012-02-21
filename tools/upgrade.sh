current_path=`pwd`
printf '\033[0;34m%s\033[0m\n' "Upgrading Oh My Zsh from upstream..."
( cd $ZSH && git pull origin master )
printf '\033[0;34m%s\033[0m\n' "Upgrading Oh My Zsh from fork..."
(cd $ZSH && git pull tubbo master )
printf '\033[0;34m%s\033[0m\n' "Synchronizing upstream to fork"
( cd $ZSH && git push tubbo master )
printf '\033[0;32m%s\033[0m\n' '         __                                     __   '
printf '\033[0;32m%s\033[0m\n' '  ____  / /_     ____ ___  __  __   ____  _____/ /_  '
printf '\033[0;32m%s\033[0m\n' ' / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \ '
printf '\033[0;32m%s\033[0m\n' '/ /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / / '
printf '\033[0;32m%s\033[0m\n' '\____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_/  '
printf '\033[0;32m%s\033[0m\n' '                        /____/                       '
printf '\033[0;34m%s\033[0m\n' 'Hooray! Oh My Zsh has been updated and/or is at the current version.'
printf '\033[0;34m%s\033[1m%s\033[0m\n' 'To keep up on the latest, be sure to follow Oh My Zsh on twitter: ' 'http://twitter.com/ohmyzsh'
cd "$current_path"
