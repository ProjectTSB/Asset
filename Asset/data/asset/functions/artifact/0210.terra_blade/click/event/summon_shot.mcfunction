#> asset:artifact/0210.terra_blade/click/event/summon_shot
#
#
#
# @within function
#       asset:artifact/0210.terra_blade/click/
#       asset:artifact/0210.terra_blade/click/sword/sword

# サウンド
    playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.ghast.shoot player @a ~ ~ ~ 2 2

# ランダムな位置から発射
    function asset:artifact/0210.terra_blade/click/event/random_position

# テラショットにInitコマンド実行
    execute as @e[type=armor_stand,tag=5U.ShotInit] at @s run function asset:artifact/0210.terra_blade/click/3.2.terra_shot_init

# ループスタート
    function asset:artifact/0210.terra_blade/click/3.1.terra_shot_tick