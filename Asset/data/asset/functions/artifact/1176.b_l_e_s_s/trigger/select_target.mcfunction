#> asset:artifact/1176.b_l_e_s_s/trigger/select_target
#
#
#
# @within function asset:artifact/1176.b_l_e_s_s/trigger/2.check_condition



# クロスヘア中心15度以内のエンティティにタグ付け
    execute anchored eyes positioned ^ ^ ^25 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..25] positioned as @s facing entity @p[tag=this] feet positioned ^ ^ ^1000 rotated as @p[tag=this] positioned ^ ^ ^1000 if entity @s[distance=..261.1] run tag @s add WO.Candidate
        #execute if entity @e[type=#lib:living_without_player,tag=Enemy,tag=WO.Candidate,tag=!Uninterferable] run say detect
        #execute unless entity @e[type=#lib:living_without_player,tag=Enemy,tag=WO.Candidate,tag=!Uninterferable] run say nodetect

# 候補と発動者の間に遮蔽ブロックがあるか確認、近くにいる候補を優先して対象にしたいので近くからやる
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=WO.Candidate,tag=!Uninterferable,sort=nearest] at @s anchored eyes positioned ^ ^ ^ facing entity @p[tag=this] eyes run function asset:artifact/1176.b_l_e_s_s/trigger/block_check

# 選択した対象のID取得
    scoreboard players operation $WO.TargetID Temporary = @e[tag=WO.Target] MobUUID

# reset
    tag @e[type=#lib:living_without_player,tag=Enemy,tag=WO.Candidate,tag=!Uninterferable] remove WO.Candidate
    tag @e[type=#lib:living_without_player,tag=Enemy,tag=WO.Target,tag=!Uninterferable] remove WO.Target
