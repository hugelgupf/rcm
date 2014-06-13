  $ . "$TESTDIR/helper.sh"

Overrides SYMLINK_DIRS with -s

  $ mkdir -p .dotfiles/eggplant_firetruck/lampshape
  > touch .dotfiles/eggplant_firetruck/lampshape/bottle

  $ echo 'SYMLINK_DIRS="eggplant_firetruck"' > $HOME/.rcrc

  $ rcup -vs eggplant_firetruck
  '/*/.dotfiles/eggplant_firetruck/lampshape/bottle' -> '/*/.eggplant_firetruck/lampshape/bottle' (glob)
