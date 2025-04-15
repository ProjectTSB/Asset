#> asset:object/1049.lexiel_rod_fireball/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1049/kill

#> private
# @within function asset:object/1049.lexiel_rod_fireball/kill/*
    #declare score_holder $UserID

# 演出
    function asset:object/1049.lexiel_rod_fireball/kill/vfx


# プレイヤー特定
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
# ダメージ
    function api:damage/single_damage_session/open
    function asset:object/1049.lexiel_rod_fireball/kill/deal_damage.m {DamagePer:100,RangeMax:0.5,RangeMaxD:0,RangeMinSubCommand:""}
    function asset:object/1049.lexiel_rod_fireball/kill/deal_damage.m {DamagePer: 25,RangeMax:3.0,RangeMaxD:5,RangeMinSubCommand:"positioned ~-0.5 ~-0.5 ~-0.5 unless entity @s[dx=0,dy=0,dz=0] "}
    function api:damage/single_damage_session/close
# リセット
    scoreboard players reset $UserID Temporary
# キル
    kill @s
