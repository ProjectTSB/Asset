#> asset:object/2049.lightning_magic/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2049/kill

# 演出
    particle flash ~ ~1.2 ~ 0 0 0 0 1

# 消滅
    execute on passengers run kill @s
    kill @s
