#> asset:mob/0456.gargo_ex_machina/tick/event/rocket_punch/summon_aec
#
# ロケットパンチ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/rocket_punch/

# [ImportKey]: NobwRALgngDgpmAXGANgSwHYIDRgK55oAmSYRA7ACzkCGNATAGwC0ArAMb3vOUCcADAGZmNOERrN+tIgCM4-fpXqywuDDQC2CZIC3fAAQBGVWBg0ATpoDOScOwD2eDBCSNcAMzN2NNsADcaKHja4AAeSMz0rLhQSPwAvnG4EHY+-oHBYGGIkdGxCbh2bm6WcM6I-LhyAF5ocGaxuGiWAEJwNXUAogCOeAEoUADKpuxiSG4BJQkAukA_3
# 線 1
summon area_effect_cloud ^-25 ^ ^0 {Tags:["CO.Aec.AttackPosition","CO.Aec.AttackPosition.Init"],Duration:80}
summon area_effect_cloud ^-15 ^ ^0 {Tags:["CO.Aec.AttackPosition","CO.Aec.AttackPosition.Init"],Duration:80}
summon area_effect_cloud ^-5 ^ ^0 {Tags:["CO.Aec.AttackPosition","CO.Aec.AttackPosition.Init"],Duration:80}
summon area_effect_cloud ^5 ^ ^0 {Tags:["CO.Aec.AttackPosition","CO.Aec.AttackPosition.Init"],Duration:80}
summon area_effect_cloud ^15 ^ ^0 {Tags:["CO.Aec.AttackPosition","CO.Aec.AttackPosition.Init"],Duration:80}
summon area_effect_cloud ^25 ^ ^0 {Tags:["CO.Aec.AttackPosition","CO.Aec.AttackPosition.Init"],Duration:80}

# 数を減らす
    kill @e[type=area_effect_cloud,tag=CO.Aec.AttackPosition,tag=CO.Aec.AttackPosition.Init,distance=..80,sort=random,limit=1]

# 回転  
    execute as @e[type=area_effect_cloud,tag=CO.Aec.AttackPosition,tag=CO.Aec.AttackPosition.Init,distance=..80] positioned as @s run tp @s ~ ~ ~ ~ ~

# 終了
    tag @e[type=area_effect_cloud,tag=CO.Aec.AttackPosition,tag=CO.Aec.AttackPosition.Init,distance=..80] remove CO.Aec.AttackPosition.Init
