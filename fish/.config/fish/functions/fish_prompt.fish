function fish_prompt
    set -l cmd_status $status
     
    if test -n "$SSH_TTY"
        echo -n (set_color brred)"$USER"(set_color white)'@'(set_color yellow)(prompt_hostname)' '
    end

    echo -n (set_color blue)(prompt_pwd)' '
    if test (prompt_hostname) = "toolbox"
    echo -n (set_color purple)"$cmd_status"'>'(set_color yellow)'>' #add (prompt_hostname)
    end

    set_color -o
    if fish_is_root_user
        echo -n (set_color red)'# '
    end
    
    if test (prompt_hostname) != "toolbox"
    echo -n (set_color purple)"$cmd_status"'>'(set_color yellow)'>'
    end
    set_color normal

end
