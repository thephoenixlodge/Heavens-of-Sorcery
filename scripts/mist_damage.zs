import crafttweaker.events.IEventManager;
import crafttweaker.event.IEventCancelable;
import crafttweaker.event.ILivingEvent;
import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.event.EntityLivingAttackedEvent;
import crafttweaker.damage.IDamageSource;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.entity.IEntityDefinition;

////Variables

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