#> asset:mob/0456.gargo_ex_machina/tick/event/field_modify/summon_field_start
#
# フィールド・モディファイ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/field_modify/event_start

# 位置決定用AEC召喚
    # [ImportKey]: NobwRALgngDgpmAXGANgSwHYIDRgK55oAmSYcRADEQExwAsAnALQBGRA7C03Ve0wIYA2dkSYV2dAGYAOFhRZ0406mFwZ+AWwTJAW74ACAIyqwMfgCdNAZyTgAxgHs8GCEjq5JZ+xptgAbvxQ8bXAADyQmamoAOgBWXCgkSNiAX2TcCHsff0DgsDDEJLiwBILomNTce0lJSzgXRApcFjgALzQ4MyRGsDRLACFW9rMAUQBHPACUKABlU1tyJEkA2orwaHhSdCxjAmJSWwN2AGYj-mpmSRiKA25BalsmBkkjikeGfgoGA0ijuEkVNSabRgfQ3BwwBK4UwWDTWRB2RzOVzuTzeeF+AJBHz5CJleJIdgpNKQTLo7JY9H5Qr4xCE8rEqo1OpdJqDDosnr9NkjcaTGZzBaIJYoFZpNawYFbHD4QgkZBHGiHThHATfGLcOhEfgCaRwagCGInfhEQS2SS2BjS9RaUigpjgqD2+wQ4zQqw+BxOepuMAeLxZTG5HHU4rhOkVEkBnLYxJ40OIJjhhnVWr1brNNrshq4XoDTM8iYoKazfjzOXC0XYcUbZBSnay0iHFhLAwWpgmuh0bj8I76hjUQQ3CQxAwMXUxf6COjGa3Au0Op0QxeQkzmd3oz1IxA+v1o8DkoPhEMlXFE9Kk-eBmOlWI00-0yop5nZsAZoYc3PcsaF4sC8vLOBUgAXSAA_3
    # 線 1-copy
    summon area_effect_cloud ^-22.5 ^ ^7.5 {Tags:["CO.Aec.FieldModify","CO.Aec.FieldModify.Init"]}
    summon area_effect_cloud ^-7.5 ^ ^7.5 {Tags:["CO.Aec.FieldModify","CO.Aec.FieldModify.Init"]}
    summon area_effect_cloud ^7.5 ^ ^7.5 {Tags:["CO.Aec.FieldModify","CO.Aec.FieldModify.Init"]}
    summon area_effect_cloud ^22.5 ^ ^7.5 {Tags:["CO.Aec.FieldModify","CO.Aec.FieldModify.Init"]}
    # 線 1
    summon area_effect_cloud ^-22.5 ^ ^22.5 {Tags:["CO.Aec.FieldModify","CO.Aec.FieldModify.Init"]}
    summon area_effect_cloud ^-7.5 ^ ^22.5 {Tags:["CO.Aec.FieldModify","CO.Aec.FieldModify.Init"]}
    summon area_effect_cloud ^7.5 ^ ^22.5 {Tags:["CO.Aec.FieldModify","CO.Aec.FieldModify.Init"]}
    summon area_effect_cloud ^22.5 ^ ^22.5 {Tags:["CO.Aec.FieldModify","CO.Aec.FieldModify.Init"]}
    # 線 1-copy-copy
    summon area_effect_cloud ^-22.5 ^ ^-7.5 {Tags:["CO.Aec.FieldModify","CO.Aec.FieldModify.Init"]}
    summon area_effect_cloud ^-7.5 ^ ^-7.5 {Tags:["CO.Aec.FieldModify","CO.Aec.FieldModify.Init"]}
    summon area_effect_cloud ^7.5 ^ ^-7.5 {Tags:["CO.Aec.FieldModify","CO.Aec.FieldModify.Init"]}
    summon area_effect_cloud ^22.5 ^ ^-7.5 {Tags:["CO.Aec.FieldModify","CO.Aec.FieldModify.Init"]}
    # 線 1-copy-copy-copy
    summon area_effect_cloud ^-22.5 ^ ^-22.5 {Tags:["CO.Aec.FieldModify","CO.Aec.FieldModify.Init"]}
    summon area_effect_cloud ^-7.5 ^ ^-22.5 {Tags:["CO.Aec.FieldModify","CO.Aec.FieldModify.Init"]}
    summon area_effect_cloud ^7.5 ^ ^-22.5 {Tags:["CO.Aec.FieldModify","CO.Aec.FieldModify.Init"]}
    summon area_effect_cloud ^22.5 ^ ^-22.5 {Tags:["CO.Aec.FieldModify","CO.Aec.FieldModify.Init"]}

# 初期化
    execute as @e[type=area_effect_cloud,tag=CO.Aec.FieldModify.Init,distance=..80,sort=random,limit=4] at @s run function asset:mob/0456.gargo_ex_machina/tick/event/field_modify/summon_field.m {Model:"minecraft:red_stained_glass",Color:0}
    execute as @e[type=area_effect_cloud,tag=CO.Aec.FieldModify.Init,distance=..80,sort=random,limit=4] at @s run function asset:mob/0456.gargo_ex_machina/tick/event/field_modify/summon_field.m {Model:"minecraft:blue_stained_glass",Color:1}
    execute as @e[type=area_effect_cloud,tag=CO.Aec.FieldModify.Init,distance=..80,sort=random,limit=4] at @s run function asset:mob/0456.gargo_ex_machina/tick/event/field_modify/summon_field.m {Model:"minecraft:green_stained_glass",Color:2}
    execute as @e[type=area_effect_cloud,tag=CO.Aec.FieldModify.Init,distance=..80,sort=random,limit=4] at @s run function asset:mob/0456.gargo_ex_machina/tick/event/field_modify/summon_field.m {Model:"minecraft:yellow_stained_glass",Color:3}

# 終了
    kill @e[type=area_effect_cloud,tag=CO.Aec.FieldModify,distance=..80]
