function giveMoney(sourcePlayer, cmd, target, amount)
	targetPlayer = getPlayerFromName(target)
    givePlayerMoney(targetPlayer, amount)
end

function takeMoney(sourcePlayer, cmd, target, amount)
	targetPlayer = getPlayerFromName(target)
    takePlayerMoney(targetPlayer, amount)
end

addCommandHandler("give", giveMoney)
addCommandHandler("take", takeMoney)