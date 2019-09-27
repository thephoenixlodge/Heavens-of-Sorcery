import mods.alfinivia.IEntityFunction;
import mods.alfinivia.IDamageFunction;
import mods.alfinivia.DamageBuilder;
import crafttweaker.events.IEventManager;
import crafttweaker.event.IEventCancelable;
import crafttweaker.event.ILivingEvent;
import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.event.EntityLivingAttackedEvent;
import crafttweaker.damage.IDamageSource;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.entity.IEntityDefinition;

////Variables
//var wisp = <entity:eerieentities:wisp>;
var meecreep = <entity:meecreeps:meecreeps>;



/*var builder = DamageBuilder.get("mist"); 
builder.matchEntity(IEntityFunction.getEntities([meecreep])); 
builder.matchDamageSource("mist_in_fog"); 
builder.setFunction(IDamageFunction.threshold(1.0)); 
builder.build();*/

events.onEntityLivingAttacked(function(event as EntityLivingAttackedEvent){
	if(!isNull(event.entity.definition) && event.entity.definition.id == <entity:meecreeps:meecreeps>.id){
		if(event.damageSource.damageType == <damageSource:mist_in_fog>.damageType){
			event.cancel();
		}
	}
});