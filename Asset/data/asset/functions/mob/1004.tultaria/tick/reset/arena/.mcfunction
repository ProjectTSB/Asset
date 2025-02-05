#> asset:mob/1004.tultaria/tick/reset/arena/
#
# アリーナを削除する
#
# @within function
#   asset:mob/1004.tultaria/remove/
#   asset:mob/1004.tultaria/death/

# バリアの足場を片付ける
    fill ~-15 ~-5 ~-15 ~15 ~-1 ~15 stone

# 足場のオブジェクトをキル
    execute as @e[type=minecraft:item_display,scores={ObjectID=2026},distance=..64] run function asset:mob/1004.tultaria/tick/reset/arena/kill

# 最初の足場を出す
    execute positioned ~-20 ~-34 ~-20 run place template asset:final_boss_arena_phase1
