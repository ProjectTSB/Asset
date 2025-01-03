#> asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/summon_arena
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/windup

# 危ないので付近のプレイヤーを中央に寄せる
    data modify storage lib: Argument.Bounds set value [[8d,8d],[0.0d,0.0d],[8d,8d]]
    execute as @a[distance=..64] at @e[type=marker,tag=RW.Marker.SpawnPoint] run function lib:spread_entity/

# 今までの足場を吹き飛ばす: アリーナを下に伸ばしたもんだからコマンド一個で消せなくなった
    fill ~20 ~1 ~20 ~-20 ~-17 ~-20 air
    fill ~20 ~-18 ~20 ~-20 ~-35 ~-20 air

# ガラス貼りのやつ召喚
    function asset:mob/1004.tultaria/tick/base_move/generate_platform/
