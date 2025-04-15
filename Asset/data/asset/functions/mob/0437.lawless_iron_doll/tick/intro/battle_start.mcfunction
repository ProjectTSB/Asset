#> asset:mob/0437.lawless_iron_doll/tick/intro/battle_start
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/intro/

# タグ付与
    tag @s remove C5.Moveset.Intro
    tag @s add C5.Moveset.BaseMove

# スコアリセット
    scoreboard players set @s General.Mob.Tick -1

# フェイズ進める
    scoreboard players set @s C5.Phase 1

# 無敵解除
    tag @s remove Uninterferable
    data modify entity @s Invulnerable set value 0b

# アニメーション
    execute as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/neutral/tween {to_frame: 0, duration: 5}
