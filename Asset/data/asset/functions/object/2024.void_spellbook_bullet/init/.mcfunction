#> asset:object/2024.void_spellbook_bullet/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2024/init

# 向きを決定
    tp @s ~ ~ ~ ~ ~

# 発射音
    playsound ogg:block.amethyst.step6 hostile @a[distance=..32] ~ ~ ~ 1 2 0
    playsound ogg:block.amethyst.step6 hostile @a[distance=..32] ~ ~ ~ 1 1.95 0
    playsound ogg:block.amethyst.step6 hostile @a[distance=..32] ~ ~ ~ 1 1.9 0
    playsound block.respawn_anchor.deplete hostile @a[distance=..32] ~ ~ ~ 1 2 0

# 継承元の処理
    function asset:object/super.init
