zplug "junegunn/fzf-bin",\
    as:command,\
    from:gh-r,\
    rename-to:"fzf",\
    hook-load:"""
        source $ZPLUG_REPOS/junegunn/fzf/shell/key-bindings.zsh
        source $ZPLUG_REPOS/junegunn/fzf/shell/completion.zsh
        """
        #export FZF_DEFAULT_COMMAND='fd --hidden --type file --no-ignore --exclude "/.git/" --exclude "/dist" --exclude "/test-reports" --exclude "/coverage"'
        # export FZF_DEFAULT_OPTS='--ansi --height 40% --reverse --no-border --multi'
        export FZF_DEFAULT_OPTS='--ansi --multi --height 80%'
        # export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
        export FZF_DEFAULT_COMMAND='fd --type file --hidden --follow --no-ignore --exclude .git --exclude node_modules --exclude dist --exclude coverage --exclude test-reports'
        export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
zplug "junegunn/fzf",\
    as:command,\
    use:bin/fzf-tmux,\
    on:"junegunn/fzf-bin",\

# use fzf for completion anywhere after pressing TAB
zplug "aloxaf/fzf-tab", defer:3

# use ALT+U to pop fzf widget to select a parent directory (set FZF_UP_BINDKEY to override)
zplug "pjvds/zsh-fzf-up"
