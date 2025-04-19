#> asset:mob/0410.heiloang/tick/event/enhanced_disaster/particle_element
#
# エンハンスドディザスター
#
# @within asset:mob/0410.heiloang/tick/event/enhanced_disaster/

# 実行
    execute if entity @s[tag=BE.Temp.EhdPosition.Fire] run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/particle_element.m {Color:"0.831 0.239 0.133"}
    execute if entity @s[tag=BE.Temp.EhdPosition.Ice] run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/particle_element.m {Color:"0.471 0.894 1"}
    execute if entity @s[tag=BE.Temp.EhdPosition.Thunder] run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/particle_element.m {Color:"1 0.855 0.376"}
