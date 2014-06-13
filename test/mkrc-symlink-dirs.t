  $ . "$TESTDIR/helper.sh"

Overrides SYMLINK_DIRS with -s

  $ mkdir -p .eggplant_firetruck/lampshape
  > touch .eggplant_firetruck/lampshape/bottle

  $ mkdir -p .boxing_card
  > touch .boxing_card/fragrance

  $ echo 'SYMLINK_DIRS="eggplant_firetruck boxing_card"' > $HOME/.rcrc

  $ mkrc -v .boxing_card
  Moving...
  '/*/.boxing_card' -> '/*/.dotfiles/boxing_card' (glob)
  Linking...
  '/*/.dotfiles/boxing_card' -> '/*/.boxing_card' (glob)

  $ mkrc -vs .eggplant_firetruck
  Moving...
  '/*/.eggplant_firetruck/lampshape/bottle' -> '/*/.dotfiles/eggplant_firetruck/lampshape/bottle' (glob)
  Linking...
  '/*/.dotfiles/eggplant_firetruck/lampshape/bottle' -> '/*/.eggplant_firetruck/lampshape/bottle' (glob)
