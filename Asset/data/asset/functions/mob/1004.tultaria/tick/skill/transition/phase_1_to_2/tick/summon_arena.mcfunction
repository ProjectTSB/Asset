#> asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/summon_arena
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/windup

# 危ないので付近のプレイヤーを中央に寄せる
    execute at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..64,limit=1] run tp @a[gamemode=!spectator,distance=16..128] ~ ~ ~

# 今までの足場を吹き飛ばす: アリーナを下に伸ばしたもんだからコマンド一個で消せなくなった
    fill ~20 ~1 ~20 ~-20 ~-17 ~-20 air
    fill ~20 ~-18 ~20 ~-20 ~-35 ~-20 air

# ガラス貼りのやつ召喚
    function asset:mob/1004.tultaria/tick/base_move/generate_platform/
