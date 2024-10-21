#> asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/windup
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/tick/windup

# タグ付与、全基本動作停止
    tag @s add RW.InAction

# スキルのタグをリセットする
    function asset:mob/1004.tultaria/tick/reset/skill_tag

# その他タグリセット
    tag @s remove RW.Move
    tag @s remove RW.DisableInertia

# マーカーも消す
    kill @e[type=marker,tag=RW.TeleportMarker,sort=nearest,limit=1]

# スコアリセット
    scoreboard players reset @s RW.FakeInertia

# 無敵になる
    data modify entity @s Invulnerable set value 1b
    tag @s add Uninterferable

# 演出
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 4 0.7
    playsound minecraft:block.amethyst_cluster.break hostile @a ~ ~ ~ 4 1.5

# テスト用メッセージ
    tellraw @a[distance=..50] [{"text":"<","color":"white"},{"text":"Tultaria","color":"#a33033"},{"text":"> ふぅん…。","color":"white"}]
