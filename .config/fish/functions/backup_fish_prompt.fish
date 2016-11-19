function fish_prompt
	set -l code $status

  # Logged in user
  __simple_ass_prompt_get_user
  set_color normal
  printf ' at '

  # Machine logged in to
  __simple_ass_prompt_get_host
  set_color normal
  printf ' in '

  # Path
  __simple_ass_prompt_pwd
  set_color normal

  # Git info
  __simple_ass_prompt_git

  # Line 2
  echo
  if test $VIRTUAL_ENV
    printf "(%s) " (set_color blue)(basename $VIRTUAL_ENV)(set_color normal)
  end

  if test $code -eq 127
    set_color red
  end

  printf '↪ '
  set_color normal
end
