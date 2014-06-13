  $ . "$TESTDIR/helper.sh"

Overrides SYMLINK_DIRS with -s

  $ mkdir -p .dotfiles/eggplant_firetruck/lampshape
  > touch .dotfiles/eggplant_firetruck/lampshape/bottle

  $ echo 'SYMLINK_DIRS="eggplant_firetruck"' > $HOME/.rcrc

  $ rcup -s eggplant_firetruck
  /*/.eggplant_firetruck/lampshape/bottle:/*/.dotfiles/eggplant_firetruck/lampshape/bottle (glob)
