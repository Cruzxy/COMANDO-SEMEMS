RegisterCommand('semems',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    local paramedicos = vRP.getUsersByPermission("paramedico.permissao")

	local vida = vRPclient.getHealth(source)

	if vida >= 102 then TriggerClientEvent("Notify",source,"negado","Você não pode usar esse comando vivo!") return end

	if parseInt(#paramedicos) == 0 then

    if vRP.tryFullPayment(source,10000) then

            vRPclient.killGod(source)
			vRPclient.setHealth(source,400)

			TriggerClientEvent("Notify",source,"negado","Você foi salvo por forças divinas!")

    else

        TriggerClientEvent("Notify",source,"negado","Você não possui dinheiro para pagar o comando..")

        end

	else

    TriggerClientEvent("Notify",source,"negado","Existem Paramedicos em serviço")

    end
	

end)