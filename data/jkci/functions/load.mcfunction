# 第一次进入
scoreboard objectives add jkci.mem dummy "计数"
execute unless score #state jkci.mem matches 0..1 run function jkci:init
execute if score #state jkci.mem matches 0 run function jkci:menu
execute if score #state jkci.mem matches 1 run tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text": "【物品种类收集挑战】","color": "gold"},{"text": "游戏已开始！","color": "green"},"    ",{"text": "[停止]","color": "red","clickEvent": {"action": "run_command","value": "/function jkci:end"}}]