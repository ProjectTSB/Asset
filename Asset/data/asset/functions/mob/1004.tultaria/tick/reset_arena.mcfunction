#> asset:mob/1004.tultaria/tick/reset_arena
#
#
#
# @within function
#   asset:mob/1004.tultaria/remove/
#   asset:mob/1004.tultaria/death/

# 危ないので離れているプレイヤーを中央に送る
    tp @a[gamemode=!spectator,distance=20..128] ~ ~ ~

# バリアの足場を片付ける
    fill ~-15 ~-5 ~-15 ~15 ~-1 ~15 stone

# 足場のオブジェクトをキル
    kill @e[type=minecraft:item_display,scores={ObjectID=2026},distance=..64]
    kill @e[type=minecraft:item_display,tag=2026.Layer,distance=..64]

# 最初の足場を出す
    execute positioned ~-20 ~-34 ~-20 run place template asset:final_boss_arena_phase1
