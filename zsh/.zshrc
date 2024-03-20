#--------------------------------------------------------------------------
# Oh My Zsh
#--------------------------------------------------------------------------

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
    git
    docker-compose
)

source $ZSH/oh-my-zsh.sh

#--------------------------------------------------------------------------
# Configuration
#--------------------------------------------------------------------------

export PATH="$HOME/bin:$PATH";
export PATH="/opt/homebrew/bin:$PATH"

#--------------------------------------------------------------------------
# Aliases
#--------------------------------------------------------------------------

# General
alias c="clear"
alias serve="php artisan serve"
alias server="php -S localhost:8000"

# Laravel
alias art="php artisan"
alias model="php artisan make:model"
alias controller="php artisan make:controller"
alias migrate="php artisan migrate"
alias rollback="php artisan migrate:rollback"
alias migration="php artisan make:migration"
alias request="php artisan make:request"
alias seeder="php artisan make:seeder"
alias mfs="php artisan migrate:fresh --seed"
alias tinker="php artisan tinker"

# Packages
alias pint="./vendor/bin/pint --dirty"
alias phpstan="./vendor/bin/phpstan analyse --memory-limit=2G"
alias pest="./vendor/bin/pest"
alias pesttype="php -d memory_limit=2G ./vendor/bin/pest --type-coverage"

# Git
alias wip="git add . && git commit -m 'wip'"
alias typo="git add . && git commit -m 'Fix typo'"
alias formatting="git add . && git commit -m 'Formatting'"
alias uncommit="git reset --soft HEAD~1"

# Docker
alias up="docker compose up -d"
alias down="docker compose down"
alias da="docker compose exec php php artisan"
alias de="docker compose exec"
alias dad="docker compose -f docker-compose-dev.yml exec php php artisan"
alias dbash="docker compose exec php bash"