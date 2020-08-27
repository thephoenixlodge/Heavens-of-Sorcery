import crafttweaker.events.IEventManager;
import crafttweaker.event.IEventCancelable;
import crafttweaker.event.ILivingEvent;
import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.event.EntityLivingAttackedEvent;
import crafttweaker.event.EntityLivingDeathDropsEvent;
import crafttweaker.damage.IDamageSource;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.entity.IEntityDefinition;

events.onEntityLivingAttacked(function(event as EntityLivingAttackedEvent){
	val entities = [
		<entity:meecreeps:meecreeps>,
		<entity:thaumcraft:wisp>,
		<entity:bewitchment:ghost>
	] as IEntityDefinition[];
	for entityCheck in entities {
		if(!isNull(event.entity.definition) && event.entity.definition.id == entityCheck.id){
			if(event.damageSource.damageType == "mist.in_fog"){
				event.cancel();
			}
		}
	}
});

events.onEntityLivingDeathDrops(function(dropsEvent as EntityLivingDeathDropsEvent){
	val wisp = <entity:thaumcraft:wisp> as IEntityDefinition;
	if(dropsEvent.entity.definition.id == wisp.id){
		dropsEvent.cancel();
	}
});