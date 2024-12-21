#> asset:mob/0380.haruclaire_v3/_index.d
# @private

#> tag
# @within function asset:mob/0380.haruclaire_v3/**
# AJ自動生成ファンクション
    #declare function animated_java:haruclaire_aj/summon
    #declare function animated_java:haruclaire_aj/animations/pause_all
    #declare function animated_java:haruclaire_aj/animations/1_0_rod_idle/tween
    #declare function animated_java:haruclaire_aj/animations/3_0_rod_move/tween
    #declare function animated_java:haruclaire_aj/animations/5_0_rod_icebullet/tween
    #declare function animated_java:haruclaire_aj/animations/4_0_rod_icewall/tween
    #declare function animated_java:haruclaire_aj/remove/all

# 汎用
    #declare tag AK.EntityRoot 本体
    #declare tag AK.ModelRoot かわいいハルクレアのガワ
    #declare tag AK.MainTarget 狙っている対象

# スキル
    #declare tag AK.Skill.Move 移動
    #declare tag AK.Skill.IceBullet アイスバレット
    #declare tag AK.Skill.IceWall アイスウォール

# 他Entity
    #declare tag AK.CenterPosition 召喚位置

# 一時タグ
    #declare tag AK.Temp.Ground 接地用
    #declare tag AK.Temp.AttackPosition 攻撃位置保持用
    #declare tag AK.Temp.AttackRotation 攻撃角度保持用
