#> asset:artifact/0374.thunder_spell/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/374/click/

# 演出
    execute positioned ^ ^ ^1 run particle dust 1 1 0 1 ~ ~1 ~ 0.1 0 0.1 0 5
    execute positioned ^ ^ ^1.5 run particle dust 1 1 0 1 ~ ~1 ~ 0.1 0 0.1 0 5
    execute positioned ^ ^ ^2 run particle dust 1 1 0 1 ~ ~1 ~ 0.1 0 0.1 0 5
    execute positioned ^ ^ ^2.5 run particle dust 1 1 0 1 ~ ~1 ~ 0.1 0 0.1 0 5
    execute positioned ^ ^ ^3 run particle dust 1 1 0 1 ~ ~1 ~ 0.1 0 0.1 0 5
    execute positioned ^ ^ ^3.5 run particle dust 1 1 0 1 ~ ~1 ~ 0.1 0 0.1 0 5
    execute positioned ^ ^ ^4 run particle dust 1 1 0 1 ~ ~1 ~ 0.1 0 0.1 0 5
    execute positioned ^ ^ ^4.5 run particle dust 1 1 0 1 ~ ~1 ~ 0.1 0 0.1 0 5
    execute positioned ^ ^ ^5 run particle dust 1 1 0 1 ~ ~1 ~ 0.1 0 0.1 0 5
    playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 1 2
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.4 2

# 弾丸飛ばす
    execute positioned ~ ~1 ~ positioned ^ ^ ^5 if entity @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..5] facing entity @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..5,sort=nearest,limit=1] feet run function asset:artifact/0374.thunder_spell/click/3.1.line

# タグ消し
    tag @s remove AE.Check
