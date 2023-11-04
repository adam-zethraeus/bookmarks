#!/usr/bin/env zsh
# ------------------------------------------------------------------------------
#          FILE:  zshmarks.plugin.zsh
#   DESCRIPTION:  zsh plugin file.
#        AUTHOR:  Jocelyn Mallon
#       VERSION:  2.0.0
# ------------------------------------------------------------------------------

# Standarized $0 handling, following:
# https://github.com/zdharma/Zsh-100-Commits-Club/blob/master/Zsh-Plugin-Standard.adoc
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

if [[ $PMSPEC != *f* ]] {
  fpath+=( "${0:h}/functions" )
}

autoload -Uz bm @bookmarks_colorize @bookmarks_delete @bookmarks_join @bookmarks_jump @bookmarks_list @bookmarks_mark  @bookmarks_next @bookmarks_prev @bookmarks_search @bookmarks_usage test_color_24bit test_color_codes test_color_names

source colorize

# Set BOOKMARKS_FILE if it doesn't exist to the default.
# Allows for a user-configured BOOKMARKS_FILE.
BOOKMARKS_FILE=${BOOKMARKS_FILE:-"$HOME/.bookmarks"}
BOOKMARKS_LAST="${BOOKMARKS_LAST:-"$HOME"}/.bookmarks_last"
# Normalize file path
BOOKMARKS_FILE=${BOOKMARKS_FILE:A}
BOOKMARKS_LAST=${BOOKMARKS_LAST:A}

# Create file it if it doesn't exist
if [[ ! -f $BOOKMARKS_FILE ]]; then
  echo -n > $BOOKMARKS_FILE
fi
if [[ ! -f $BOOKMARKS_LAST ]]; then
  echo -n > $BOOKMARKS_LAST
fi

