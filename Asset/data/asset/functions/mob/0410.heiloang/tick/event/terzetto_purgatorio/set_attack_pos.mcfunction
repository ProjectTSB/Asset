#> asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/set_attack_pos
#
# テルツェット・プルガトリオ
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/

# 対象決定
    tag @a[tag=!PlayerShouldInvulnerable,distance=..80,sort=random,limit=3] add BE.AttackTarget
