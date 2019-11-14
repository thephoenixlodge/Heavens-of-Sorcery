import crafttweaker.command.ICommandManager;
import crafttweaker.server.IServer;
import crafttweaker.command.ICommandSender;
import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityLivingExtendedSpawnEvent;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.entity.IEntityDefinition;



//message from gaia
events.onSpecialSpawn(function(event as EntityLivingExtendedSpawnEvent){
	if(!isNull(event.entity.definition) && event.entity.definition.id == <entity:botania:doppleganger>.id){
		var sender = event.entity as ICommandSender;
		server.commandManager.executeCommand(sender, "say WHERE IS IT??");
	}
});