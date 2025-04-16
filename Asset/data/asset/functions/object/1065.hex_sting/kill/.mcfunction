#> asset:object/1065.hex_sting/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1065/kill

#> Private
# @within function asset:object/1065.hex_sting/kill/*
#declare score_holder $UserID

# 演出
    particle flash ~ ~ ~ 0 0 0 4 0 force
    particle flame ~ ~ ~ 0 0 0 0.3 20 force
    particle campfire_cosy_smoke ~ ~ ~ 0 0 0 0.05 10 force
    particle explosion ~ ~ ~ 0 0 0 0 1 force
    playsound entity.generic.explode player @a[distance=..50] ~ ~ ~ 1 1 0.3
    playsound entity.generic.explode player @a[distance=..50] ~ ~ ~ 1 0 0.3
    playsound entity.blaze.burn player @a[distance=..50] ~ ~ ~ 1 1 0.3
    summon firework_rocket ~ ~ ~ {Silent:1b,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0b,Colors:[I;16774912],FadeColors:[I;0,5526612]}]}}}}

# プレイヤー特定
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
# ダメージ
    function api:damage/single_damage_session/open
    function asset:object/1065.hex_sting/kill/deal_damage.m {DamagePer:100,RangeMax:0.5,RangeMaxD:0,RangeMinSubCommand:""}
    function asset:object/1065.hex_sting/kill/deal_damage.m {DamagePer: 75,RangeMax:1.0,RangeMaxD:1,RangeMinSubCommand:"positioned ~-0.5 ~-0.5 ~-0.5 unless entity @s[dx=0,dy=0,dz=0] "}
    function asset:object/1065.hex_sting/kill/deal_damage.m {DamagePer: 55,RangeMax:1.5,RangeMaxD:2,RangeMinSubCommand:"positioned ~-1.0 ~-1.0 ~-1.0 unless entity @s[dx=1,dy=1,dz=1] "}
    function asset:object/1065.hex_sting/kill/deal_damage.m {DamagePer: 30,RangeMax:2.0,RangeMaxD:3,RangeMinSubCommand:"positioned ~-1.5 ~-1.5 ~-1.5 unless entity @s[dx=2,dy=2,dz=2] "}
    function asset:object/1065.hex_sting/kill/deal_damage.m {DamagePer: 20,RangeMax:2.5,RangeMaxD:4,RangeMinSubCommand:"positioned ~-2.0 ~-2.0 ~-2.0 unless entity @s[dx=3,dy=3,dz=3] "}
    function api:damage/single_damage_session/close
# リセット
    scoreboard players reset $UserID Temporary

# super 呼び出し
    function asset:object/super.method
