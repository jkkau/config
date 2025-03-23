# 自动显示当前repo的branch名字
git_branch()
{
   branch=`git rev-parse --abbrev-ref HEAD 2>/dev/null`
   if [ "${branch}" != "" ]
   then
       if [ "${branch}" = "(no branch)" ]
       then
           branch="(`git rev-parse --short HEAD`...)"
       fi
       echo "($branch)"
   fi
}

#将$(git_branch)加入到PS1中
# if [ "$color_prompt" = yes ]; then
#         PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w$(git_branch)\[\033[00m\]\$ '
# else
#         PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(git_branch)\$ '
# fi
